datatype ('a, 'b) s = In1 of 'a | In2 of 'b
fun exit x = ()
val cps_code =
let val x_49 = fn (k_18, x) => 
        k_18 x


in
    exit x_49
end
