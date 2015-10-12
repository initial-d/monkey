datatype ('a, 'b) s = In1 of 'a | In2 of 'b
fun exit x = ()
val cps_code =
let val x_51 = fn (k_20, x) => 
        k_20 x


in
    let val x_52 = "hello"
    in
        let fun k_19 x_50 =
            exit x_50
        in
            x_51 (k_19, x_52)

        end

    end

end
