datatype ('a, 'b) s = In1 of 'a | In2 of 'b
fun exit x = ()
val cps_code =
let val x_41 = fn (k_15, x) => 
        let val x_42 = 99
        in
            k_15 x_42

        end


in
    exit x_41
end
