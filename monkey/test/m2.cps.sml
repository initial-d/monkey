datatype ('a, 'b) s = In1 of 'a | In2 of 'b
fun exit x = ()
val cps_code =
let val x_31 = "z"
in
    let val x_32 = In1 x_31
    in
        let fun k_12 x_30 =
            exit x_30
        in
            let fun k_13 x =
                let val x_33 = "A"
                in
                    let val x_34 = "AA"
                    in
                        let val x_35 = (x_33, x_34)
                        in
                            k_12 x_35

                        end

                    end

                end

            in
                let fun k_14 x1 =
                    let val x_36 = "B"
                    in
                        let val x_37 = "BB"
                        in
                            let val x_38 = (x_36, x_37)
                            in
                                k_12 x_38

                            end

                        end

                    end

                in
                    case x_32 of In1 z1 => k_13 z1 | In2 z2 => k_14 z2

                end

            end

        end

    end

end
