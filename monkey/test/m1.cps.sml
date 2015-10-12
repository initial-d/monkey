datatype ('a, 'b) s = In1 of 'a | In2 of 'b
fun exit x = ()
val cps_code =
let val x_44 = fn (k_17, x) => 
        let val x_45 = #1 x
        in
            k_17 x_45

        end


in
    let val x_46 = "a"
    in
        let val x_47 = "b"
        in
            let val x_48 = (x_46, x_47)
            in
                let fun k_16 x_43 =
                    exit x_43
                in
                    x_44 (k_16, x_48)

                end

            end

        end

    end

end
