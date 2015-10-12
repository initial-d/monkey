structure Machine: MACHINE =
struct

exception TODO 

val out: TextIO.outstream option ref = ref NONE
fun print (s) =
    case !out 
     of SOME out' => 
        TextIO.output(out', s)
      | NONE => 
        TextIO.output(TextIO.stdOut, s)

fun 'a printlist (l: 'a list, p: 'a->unit, sep: string, afterlast: bool) =
    let fun doit l =
            case l
             of [] => ()
              | [x] => (p x; if afterlast then print sep else ())
              | x::xs => (p x; print sep; doit xs)
    in  doit l
    end

structure PrimOp =
struct
datatype t
  = Add
  | Sub
  | Times
  | Print
  | Int2String
    
end (* Prim *)


structure Binding =
struct

datatype v
  = Null
  | Fetch of int * string
  | Num of int
  | String of string
  | AllocTuple of {numFields: int}
  | Prim of PrimOp.t * string list
  | AllocTag of {tag: int}
                
datatype t
  = Bind of {var: string, binding: v}
  | Init of {dst: string, index: int, src: string} (* dst[index] = src *)
             
fun convertString s =
    let fun doit (l, r) =
            case l
             of [] => r
              | (#"\n")::xs => doit (xs, (#"n")::(#"\\")::r)
              | x::xs => doit (xs, x::r)
    in  implode (rev (doit (explode s, [])))
    end

(*Excercise 5, task 1.*)
fun dump2file' t =
    case t
     of Null => print "0"
      | String s => print (concat ["(ty_int_ptr)\"", convertString s, "\""])
      | Num i => print (concat["(ty_int_ptr)",Int.toString i])
      | Fetch (i, s) => print (concat [ "(ty_int_ptr)((ty_int_ptr)",s, ")[", Int.toString i, "]"])
      | AllocTuple {numFields} => print (concat ["allocTuple(", Int.toString numFields, ")"])
      | AllocTag{tag} => print (concat ["allocTag(", Int.toString tag, ")"]) 
      | Prim (PrimOp.Add, [s1, s2]) => print (concat["(ty_int_ptr)((int)", s1, " + ", "(int)", s2, ")"])
      | Prim (PrimOp.Sub, [s1, s2]) => print (concat["(ty_int_ptr)((int)", s1, " - ", "(int)", s2, ")"]) 
      | Prim (PrimOp.Times, [s1, s2]) => print (concat["(ty_int_ptr)((int)", s1, " * ", "(int)", s2, ")"])
      | Prim (PrimOp.Print, [s]) => print (concat["ml_print ((const char*)", s, ")"])
      | Prim (PrimOp.Int2String, [s]) => print (concat["ml_int2string ((int)", s, ")"])

fun dump2file t =
    case t
     of Bind {var, binding} =>
        (print "ty_int_ptr "; print var; print " = "; dump2file' binding)
      | Init {dst, index, src} =>
        (print dst; print"[(int)"; print (Int.toString index); print "] = (int)"; print src)

end (* Binding *)



structure Block =
struct
datatype exp
  = Call of {func: string
           , arg: string}
  | If0 of {cond: string
          , thenn: t
          , elsee: t}
  | Case of {cond: string
           , thenarg: string
           , thenn: t
           , elsearg: string
           , elsee: t}
  | Exit of string
            
     and t
       = Block of {bindings: Binding.t list, exp: exp}
            
(*Excercise 5, task 2.*)
fun dump2file' (e: exp) =
    case e
     of Exit x => (print "ml_exit ("; print x; print ");")
      | Call {func, arg} => 
	( print "((ty_fun_ptr)";
	  print func
	; print ") ("
	; print arg
	; print ");")
      | If0 {cond, thenn, elsee} =>
	( print "if( (int)"; 
	  print cond;
	  print " ==0 )\n  {";
	  dump2file thenn;
	  print "\n  } else {\n";
	  dump2file elsee;
	  print "\n  }"
	)
      | Case {cond, thenarg, thenn, elsearg, elsee} =>
	(
	  print(concat["void* ", thenarg, " = (void*)((int*)", cond, ")[1];\n"]);
	  print(concat["void* ", elsearg, " = (void*)((int*)", cond, ")[1];\n"]);
	  print "switch (";
	 print (concat["((int*)", cond, ")[0]"]);
	 print " )\n  {\n";
	 print "  case 1";
	 print " : \n{";
	 dump2file thenn;
	 print " break ;}\n";
	 print "  case 2";
	 print " : \n{";
	 dump2file elsee;
	 print " break ;}\n  }"
	) 

		   
and dump2file (Block{bindings, exp}) =
    let val _ = printlist (bindings
                         , fn b => (print "  "; Binding.dump2file b)
                         , ";\n"
                         , true)
        val _ = print "\n  "
        val _ = dump2file' exp
        val _ = print "\n  "
    in ()
    end

end (* Block *)


structure Function =
struct

datatype t
  = T of {name: string
        , arg: string
        , bindings: Binding.t list
        , body: Block.t}

fun dump2file (T{name, arg, bindings, body}) =
    let val _ = print (String.concat ["void ", name, "("])
        val _ = if arg=""
                then () 
                else (print "void *"; print arg)
        val _ = print (")\n{\n")
        val _ = printlist (bindings
                         , fn b => (print "  "; Binding.dump2file b)
                         , ";\n"
                         , true)
        val _ = print "\n  "
        val _ = Block.dump2file body
        val _ = print "\n}\n\n"
    in  ()
    end 
end (* Function *)
         
structure Program =
struct

datatype t
  = T of {main: Function.t
        , funcs: Function.t list}
       
fun dumpincludes () =
    print "#include <stdio.h>\n#include <stdlib.h>\n#include \"runtime.h\"\n\ntypedef void (*ty_fun_ptr)();\ntypedef int *ty_int_ptr;\n"

fun dumpmain () =
    print ("int main ()\n{\n  ml_main ();\n  return 0;\n}\n\n")

fun dump2file (T{main, funcs}, fname) =  
    let val out' = TextIO.openOut (fname)
        val _ = out:= SOME out'
        val _ = print "// Compiler auto-generated.\n\n"
        val _ = dumpincludes()
        val _ = print ("void ml_exit (void *x)\n{\n  exit (0);\n}\n\n")
        val _ = printlist (funcs, Function.dump2file, "\n", true)
        val _ = Function.dump2file main
        val _ = dumpmain ()
        val _ = TextIO.flushOut (out')
        val _ = out := NONE
        val _ = TextIO.closeOut(out')
    in ()
    end

end (* Program *)

end (* Flat *)
