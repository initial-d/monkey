datatype ('a, 'b) s = In1 of 'a | In2 of 'b
fun exit x = ()
val cps_code =
let val x_39 = "hello, world
"
in
    let val x_40 = print x_39
 in
        exit x_40
    end

end
