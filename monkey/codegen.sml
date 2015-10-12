structure Codegen: CODEGEN =
struct

exception TODO

fun transOperator t =
    case t
     of Flat.PrimOp.Add => Machine.PrimOp.Add
      | Flat.PrimOp.Sub => Machine.PrimOp.Sub
      | Flat.PrimOp.Times => Machine.PrimOp.Times
      | Flat.PrimOp.Print => Machine.PrimOp.Print
      | Flat.PrimOp.Int2String => Machine.PrimOp.Int2String

fun funArgInit (dst, args, acc, index) =
    case args
     of [] => acc
      | x::xs => 
        funArgInit (dst
                  , xs
                  , (Machine.Binding.Init{dst = dst
                                        , index = index
                                        , src = x})::acc
                  , index+1)
        
(*Exercise 3, task 1*)
fun transExp (t: Flat.Exp.t): Machine.Block.t =
    case t
     of Flat.Exp.Exit x => 
        Machine.Block.Block{ bindings = []
                           , exp = Machine.Block.Exit x}
      | Flat.Exp.Call {func, args} =>
	let val z = Temp.freshVal()
	in  Machine.Block.Block{
		bindings = (Machine.Binding.Bind{var = z,
						 binding = Machine.Binding.AllocTuple{
						     numFields = List.length args}})
			   ::(funArgInit(z, args, [], 1)),
		exp = Machine.Block.Call {func = func, arg = z}
	    }
	end
      | Flat.Exp.If0{cond, thenn, elsee} =>
	Machine.Block.Block{ bindings = [],
			     exp = Machine.Block.If0{
				 cond = cond,
				 thenn = transExp (thenn),
				 elsee = transExp (elsee)
			     }
			   }
      | Flat.Exp.Case{cond, thenarg, thenn, elsearg, elsee} =>
	Machine.Block.Block{ bindings = [],
			     exp = Machine.Block.Case{
				 cond = cond,
				 thenarg = thenarg,
				 thenn = transExp (thenn),
				 elsearg = elsearg,
				 elsee = transExp (elsee)
			     }
			   }
      
fun addInit (dst, args, acc, index) =
    case args
     of [] => acc
      | x::xs => 
        addInit (dst
               , xs
               , (Machine.Binding.Init {dst = dst
                                      , index = index
                                      , src = x})::acc
               , index+1)

(*Exercise 3, task 2*)        
fun transOneBinding ((x, b), acc) =
    case b
     of Flat.Binding.Empty => 
        (Machine.Binding.Bind {var = x
                              , binding = Machine.Binding.Null})::acc
      | Flat.Binding.Proj(i, s) =>
	(Machine.Binding.Bind {var = x
			      , binding = Machine.Binding.Fetch(i, s)})::acc
      | Flat.Binding.Num i =>
	(Machine.Binding.Bind {var = x
			      , binding = Machine.Binding.Num i})::acc
      | Flat.Binding.String s =>
	(Machine.Binding.Bind {var = x
			      , binding = Machine.Binding.String s})::acc
      | Flat.Binding.Tuple sl => (addInit(x, sl, [], 1))@
				  ((Machine.Binding.Bind{var = x,
							binding = Machine.Binding.AllocTuple{
							    numFields = List.length sl}})::
				  acc)
      | Flat.Binding.Tag(i, s) => (Machine.Binding.Init{dst = x,
							 index = 1,
							 src = s})
				   ::((Machine.Binding.Bind{var = x, 
							   binding = Machine.Binding.AllocTag{
							       tag = i}})::
				   acc)
      | Flat.Binding.Prim (opt, sl) =>
	(Machine.Binding.Bind{var = x,
			      binding = Machine.Binding.Prim(transOperator opt,
							     sl)})::acc
									
fun transBindings(l, acc) =
    case l
     of [] => acc
      | x::xs => transBindings (xs, transOneBinding (x, acc))

fun fetchArgs (newArg, l, r, index) =
    case l
     of [] => r
      | x::xs => 
        fetchArgs (newArg
                 , xs
                 , (x, Flat.Binding.Proj (index, newArg))::r
                 , index+1)
        
(*Exercise 3, task 3*)
fun transFunction (Flat.Function.T {name
                                  , args
                                  , bindings
                                  , body}) =
    let val z = Temp.freshVal()
    in  let val newBindings = transBindings (bindings, [])
	    val beforeBds = transBindings(fetchArgs (z , args, [], 1), [])
	in  Machine.Function.T {name = name
                               , arg = z
                               , bindings = rev (newBindings @ beforeBds)
                               , body = transExp body}
	end
    end

fun transMain (Flat.Function.T {name
                              , args
                              , bindings
                              , body}) =
    let val newBindings = transBindings (bindings, [])
    in  Machine.Function.T {name = name
                          , arg = (case args
                                    of [] => ""
                                     | _ => raise Fail "bug")
                          , bindings = rev newBindings
                          , body = transExp body}
    end

fun transProgram (Flat.Program.T{funcs, main}) =
    Machine.Program.T 
        {funcs = List.map transFunction funcs
       , main = transMain main}

fun trans (t) =
    transProgram t

end
