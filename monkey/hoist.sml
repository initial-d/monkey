structure Hoist: HOIST =
struct

val funcs: Flat.Function.t list ref = ref []
fun emit f = funcs:= f::(!funcs)
fun clear () = funcs := []

fun transOp t =
    case t
     of Closure.PrimOp.Print => Flat.PrimOp.Print
      | Closure.PrimOp.Sub => Flat.PrimOp.Sub
      | Closure.PrimOp.Add => Flat.PrimOp.Add
      | Closure.PrimOp.Times => Flat.PrimOp.Times
      | Closure.PrimOp.Int2String => Flat.PrimOp.Int2String

exception TODO

(*Exerceise 1*)
fun hoistExp (t:Closure.t):((string * Flat.Binding.t) list * Flat.Exp.t) =
    case t
     of Closure.LetCont{cont, env, arg, fbody, body, freevars} =>
        let val (fbds, t1') = hoistExp (fbody)
            val (bindings2, t2') = hoistExp (body)
	in let val func = Flat.Function.T {name = cont
                                       , args = [env, arg]
                                       , bindings = fbds
                                       , body = t1'}
	   in let val _ = emit func
              in  (bindings2, t2')
              end
	   end
	end
      | Closure.LetVal{name
                     , value=Closure.FuncVal{env, cont
                                             , arg, fbody, freevars}
                     , body}=>
	let val (fbds, t1') = hoistExp(fbody)
	    val (bindings2, t2') = hoistExp(body)
	in let val func = Flat.Function.T {name = name,
					   args = [env, cont, arg],
					   bindings = fbds,
					   body = t1'}
	   in let val _ = emit func
	      in (bindings2, t2')
	      end
	   end
	end
      | Closure.LetVal{name, value, body} =>
	let val (bindings, t1) = hoistExp(body)
	in ((name, hoistValue(value))::bindings, t1)
	end
      | Closure.Let{name, index, tuple, body} =>
	let val (bindings, t1) = hoistExp(body)
	in ((name, Flat.Binding.Proj(index, tuple))::bindings, t1)
	end
      | Closure.ContApp{cont, env, arg} =>
	([], Flat.Exp.Call{func = cont,
			   args = [env, arg]})
      | Closure.FuncApp{func, cont, env, arg} =>
	([], Flat.Exp.Call{func = func,
			   args = [env, cont, arg]})
      | Closure.Case{cond, thenarg, thenn, elsearg, elsee} =>
	let val (bds1, e1') = hoistExp thenn
	    val (bds2, e2') = hoistExp elsee
	in (bds1@bds2, Flat.Exp.Case{cond = cond,
				     thenarg = thenarg,
				     thenn = e1',
				     elsearg = elsearg,
				     elsee = e2'})
	end
      | Closure.LetPrim{name, opr, args, body} =>
	let val (bds1, t1) = hoistExp body
	in ((name, Flat.Binding.Prim(transOp(opr), args))::bds1, t1)
	end
      | Closure.If0 {cond, thenn, elsee} =>
        let val (bds1, e1') = hoistExp thenn
            val (bds2, e2') = hoistExp elsee
        in  (bds1@bds2, Flat.Exp.If0 {cond=cond, thenn=e1', elsee=e2'})
        end
      | Closure.LetFix{func, env, cont, arg, fbody, body, freevars} =>
	let val (fbds, t1') = hoistExp (fbody)
            val (bindings2, t2') = hoistExp (body)
	in let val func = Flat.Function.T {name = func
					  , args = [env, cont, arg]
					  , bindings = fbds
					  , body = t1'}
	   in let val _ = emit func
              in (bindings2, t2')
              end
	   end
	end
      | Closure.Exit(x) => ([], Flat.Exp.Exit(x))

      
and hoistValue (v: Closure.v): Flat.Binding.t =
    case v
     of Closure.Empty => Flat.Binding.Empty
      | Closure.Num i => Flat.Binding.Num i
      | Closure.String s => Flat.Binding.String s
      | Closure.Tuple l => Flat.Binding.Tuple l
      | Closure.Tag {label, name} =>
        Flat.Binding.Tag (label, name)
      | _ => raise Fail "NoRule"
(*func val should not reach here*)
    

fun trans t =
    let val (bds, t') = hoistExp t
        val main = Flat.Function.T {name = "ml_main"
                                  , args = []
                                  , bindings = bds
                                  , body = t'}
        val funcs = !funcs
        val _ = clear ()
    in  Flat.Program.T {main = main
                      , funcs = rev funcs}
    end 
    

end

