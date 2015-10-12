datatype ('a, 'b) s = In1 of 'a | In2 of 'b
fun exit x = ()
val cps_code =
let val x_13 = fn (k_6, x) => 
        let val x_14 = fn (k_7, y) => 
                k_7 x


        in
            k_6 x_14

        end


in
    exit x_13
end
