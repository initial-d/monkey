datatype ('a, 'b) s = In1 of 'a | In2 of 'b
fun exit x = ()
val cps_code =
let fun f(k_72, x) = (
    let fun k_73 x_121 =
        k_72 x_121

    in
        let fun k_74 x_122 =
            let val x_124 = 0
            in
                k_73 x_124

            end

        in
            let fun k_75 x_123 =
                let val x_126 = 1
                in
                    let val x_127 = x-x_126
                    in
                        let fun k_76 x_125 =
                            let val x_128 = x+x_125
                            in
                                k_73 x_128

                            end

                        in
                            f (k_76, x_127)

                        end

                    end

                end

            in
                if x= 0 then k_74() else k_75()

            end

        end

    end
    )
in
    let val x_130 = 100
    in
        let fun k_77 x_129 =
            exit x_129
        in
            f (k_77, x_130)

        end

    end

end
