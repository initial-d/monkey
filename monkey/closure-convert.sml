structure ClosureConvert: CLOSURE_CONVERT =
struct

open Temp
	 
exception NoRule

fun transOpt (opt:Cps.PrimOp.t):Closure.PrimOp.t =
    case opt
     of Cps.PrimOp.Add => Closure.PrimOp.Add
      | Cps.PrimOp.Sub => Closure.PrimOp.Sub
      | Cps.PrimOp.Times => Closure.PrimOp.Times
      | Cps.PrimOp.Print => Closure.PrimOp.Print
      | Cps.PrimOp.Int2String => Closure.PrimOp.Int2String

(*Task1: finish the function freeVarTerm and freeVarValue 
to  calulate free variables and store some results in AST. *)
fun freeVarTerm (t: Cps.t): Closure.t * Set.t =
    case t
     of Cps.LetVal(x, v, t) =>
        let val (v', set1) = freeVarValue v
            val (t', set2) = freeVarTerm t
            val set = Set.union(set1,
                                Set.remove(x, set2))
        in (Closure.LetVal{name=x, value=v',body= t'}, set)
        end
	    
      | Cps.Let(x, i, y, t) =>
	let val (t', set1) = freeVarTerm t
	    val set = Set.add(y, Set.remove(x, set1))
	in (Closure.Let{name=x, index=i, tuple=y, body=t'}, set)
	end
      | Cps.LetCont(k, x, t1, t2) =>               
	let val (t1', set1) = freeVarTerm t1
	    val (t2', set2) = freeVarTerm t2
	    val env = Temp.freshEnv()
	in
	    let val set1' = Set.remove(x, set1)
	    in
		let val set = Set.union(set1', Set.remove(k, set2))
		in (Closure.LetCont{cont=k, env=env, arg=x, fbody=t1', body=t2', freevars=set1'}, set)
		end
	    end
	end
      |	Cps.ContApp(k, x) =>
	let val env = Temp.freshEnv()
	    val set = Set.new()
	in
	    let val set1 = Set.add(k, set)
	    in
		let val set2 = Set.add(x, set1)
		in (Closure.ContApp{cont=k, env=env, arg=x}, set2)
		end
	    end
	end
      | Cps.FuncApp(f, k, x) =>
	let val env = Temp.freshEnv()
	    val set = Set.new()
	in 
	    let val set1 = Set.add(f, set)
	    in
		let val set2 = Set.add(k, set1)
		in 
          	    let val set3 = Set.add(x, set2)
		    in (Closure.FuncApp{func=f, cont=k, env=env, arg=x}, set3)
		    end
		end
	    end
	end
	    
      | Cps.Case(x, k1, k2) => 
	let val set = Set.new()
	in 
	    let val set1 = Set.add(x, set)
	    in
		let val set2 = Set.add(k1, set1)
		in
		    let val set3 = Set.add(k2, set2)
			val z1 = freshVal()
			val z2 = freshVal()
			val env1 = freshEnv()
			val env2 = freshEnv()
		    in (Closure.Case{cond=x,thenarg=z1, 
				     thenn=Closure.ContApp{cont=k1, env=env1, arg=z1}, 
				     elsearg=z2, 
				     elsee=Closure.ContApp{cont=k2, env=env2, arg=z2}
				    }, set3) 
		    end
		end
	    end
	end
	
      | Cps.LetPrim(x, option, l, t) =>
	let val (t', set1) = freeVarTerm t
	in 
	    let val set2 = Set.new()
	    in 
		let val set2' = Set.addAll(l, set2)
		in 
		    let val set = Set.union(Set.remove(x, set1), set2')
		    in (Closure.LetPrim{name=x, opr=transOpt(option), args=l, body=t'}, set)
		    end
		end
	    end
	end
      | Cps.If0(x, k1, k2) => 
	let val set = Set.new()
	in 
	    let val set1 = Set.add(x, set)
	    in
		let val set2 = Set.add(k1, set1)
		in
		    let val set3 = Set.add(k2, set2)
			val env1 = freshEnv()
			val env2 = freshEnv()
			val x1 = freshVal()
		    in (Closure.LetVal{name=x1, 
				       value=Closure.Empty,
				       body=Closure.If0{cond=x, 
							thenn=
							Closure.ContApp{cont=k1, 
									env=env1, 
									arg=x1}, 
							elsee=
							Closure.ContApp{cont=k2, 
									env=env2, 
									arg=x1} }}
		       , set3)
		    end
		end
	    end
	end
      | Cps.LetFix(f, k, x, fbody, e) =>
	let val (t1', set1) = freeVarTerm fbody
	    val (t2', set2) = freeVarTerm e
	in 
	    let val set1' = Set.remove(f, set1)
	    in 
		let val set1'' = Set.remove(k, set1')						   
		in 
		    let val set1''' = Set.remove(x, set1'')
			val env = Temp.freshEnv()
		    in 
			let val set = Set.union(
				    set1'''
				  ,
				    Set.remove(f, set2))
			in (Closure.LetFix{func=f, env=env, cont=k, arg=x, fbody=t1',body=t2',freevars=set1'''}, set)
			end
		    end
		end
	    end
	end
      | Cps.Exit x =>
        (Closure.Exit(x), Set.add(x, Set.new()))


and freeVarValue (v: Cps.v): Closure.v * Set.t =
    case v
     of Cps.Empty => (Closure.Empty, Set.new())
      | Cps.Num i => (Closure.Num(i), Set.new())
      | Cps.String x => 
        (Closure.String(x), Set.new())
      | Cps.Tuple l => (Closure.Tuple(l), 
			let val set = Set.new()
			in Set.addAll(l, set) 
			end)
      | Cps.Tag(i, x) => (Closure.Tag{label=i, name=x}, 
			  let val set = Set.new()
			  in Set.add(x, set)
			  end)
      | Cps.FuncVal(k, x, t) =>
	let val (t', set) = freeVarTerm t
	in
	    let val set1 = Set.remove(k, set)
	    in 
		let val set2 = Set.remove(x, set1)
		    val env = Temp.freshEnv()
		in (Closure.FuncVal{env=env, cont=k, arg=x, fbody=t', freevars=set2}, set2)
		end
	    end
	end
                     
fun doit(t:Closure.t, n: int, env:string, xs:string list) =
    (*unfold all free vars in xs*)
    case xs
     of [] => convert t
      | x::xs =>
        Closure.Let{name=x, index=n, tuple=env
                    , body=doit (t, n+1, env, xs)}

(*Task2: finish be below function to perform the 
actual closure conversion*)
and convert t =
    case t
     of Closure.LetVal{name
                     , value=Closure.FuncVal{env, cont
                                             , arg, fbody, freevars}
                     , body}=>
        (*let val x = fn env k y => t1
          in t2 *)
        let val x_code = freshVal()
            val env' = freshEnv()
        in Closure.LetVal{name=x_code
                         ,value=Closure.FuncVal{env=env, 
						cont=cont, 
						arg=arg
					       , fbody=doit(fbody, 1, env, freevars)
					       , freevars=freevars}
                         ,body=Closure.LetVal{ name=env'
					      ,value=Closure.Tuple(freevars)
					      ,body=Closure.LetVal{name=name
								  ,value=Closure.Tuple [x_code, env']
								  ,body=convert body}}}
        end
      | Closure.LetVal{name, value , body} => (*v: not FuncVal*) 
        Closure.LetVal{name=name, 
		       value=value , 
		       body=convert(body)}
      | Closure.Let{name, index, tuple, body} =>
	Closure.Let{name=name, 
		    index=index, 
		    tuple=tuple, 
		    body=convert(body)}
      | Closure.LetCont{cont, env, arg, fbody, body, freevars} =>
	let val k_code = freshCont()
	    val env' = freshEnv()
	in Closure.LetCont{cont=k_code,
			   env=env, 
			   arg=arg, 
			   fbody=doit(fbody, 1, env, freevars),
			   body=Closure.LetVal{name = env'
					      ,value=Closure.Tuple(freevars)
					      ,body=Closure.LetVal{name=cont
								  ,value=Closure.Tuple[k_code, env']
								  ,body=convert body}}, 
			   freevars=[]}
	end	
      | Closure.ContApp{cont, env, arg} =>
	let val k_code = freshCont()
	    val kk_code = freshCont()
	    val env' = freshEnv()
	in Closure.Let{name = kk_code, 
		       index=1, 
		       tuple=cont, 
		       body=Closure.Let{name=env', 
					index=2, 
					tuple=cont, 
					body=Closure.ContApp{cont=kk_code, 
							     env=env', 
							     arg=arg}}}
	end
      | Closure.FuncApp{func, cont, env, arg} =>
	let val cache = freshVal()
	    val f_code = freshVal()
	    val env' = freshEnv()
	in Closure.Let{name=f_code, 
		       index=1, 
		       tuple=func,
		       body=Closure.Let{name=env', 
					index=2, 
					tuple=func,
					body=Closure.FuncApp{func=f_code, 
							     cont=cont, 
							     env=env', 
							     arg=arg}}}
	end
      | Closure.Case{cond, thenarg, thenn, elsearg, elsee} =>
	Closure.Case{cond=cond, 
		     thenarg=thenarg, 
		     thenn=convert thenn, 
		     elsearg=elsearg, 
		     elsee=convert elsee}
      | Closure.LetPrim{name, opr, args, body} =>
	Closure.LetPrim{name=name, 
			opr=opr, 
			args=args, 
			body=convert body}
      | Closure.If0{cond, thenn, elsee} => 
	Closure.If0{cond=cond, 
		    thenn=convert thenn, 
		    elsee=convert elsee}
      | Closure.LetFix{func, env, cont, arg, fbody, body, freevars} =>
	let val f_code = freshVal()
	    val env' = freshEnv()
	in Closure.LetFix{func=f_code
			 ,env=env
			 ,cont=cont
			 ,arg=arg
			 ,fbody=Closure.LetVal{name=func, 
					       value=Closure.Tuple[f_code, env]
					       ,body=doit(fbody, 1, env, freevars)}
			 ,body=Closure.LetVal{name=env'
					     ,value=Closure.Tuple(freevars)
					     ,body=Closure.LetVal{name=func
								 ,value=Closure.Tuple[f_code, env']
								 ,body=convert body}}
			 ,freevars=[]}
	end
      | Closure.Exit(x)=> Closure.Exit(x)

fun trans t =
    let val (t1, set) = freeVarTerm (t)
        val t2 = convert t1
    in t2
    end 
(*    let val (t1, set) = freeVarTerm (t)
    in t1
    end
*)
end

