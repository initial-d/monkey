datatype ('a, 'b) s = In1 of 'a | In2 of 'b
fun exit x = ()
val cps_code =
let val x_56 = 2
in
    let fun k_21 x_53 =
        exit x_53
    in
        let fun k_22 x_54 =
            let val x_57 = 0
            in
                k_21 x_57

            end

        in
            let fun k_23 x_55 =
                let val x_58 = 1
                in
                    k_21 x_58

                end

            in
                if x_56= 0 then k_22() else k_23()

            end

        end

    end

end
