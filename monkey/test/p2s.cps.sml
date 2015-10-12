datatype ('a, 'b) s = In1 of 'a | In2 of 'b
fun exit x = ()
val cps_code =
let fun f(k_0, x) = (
    let fun k_1 x_0 =
        k_0 x_0

    in
        let fun k_2 x_1 =
            let val x_3 = 0
            in
                k_1 x_3

            end

        in
            let fun k_3 x_2 =
                let val x_5 = 1
                in
                    let val x_6 = x-x_5
                    in
                        let fun k_4 x_4 =
                            let val x_7 = x+x_4
                            in
                                k_1 x_7

                            end

                        in
                            f (k_4, x_6)

                        end

                    end

                end

            in
                if x= 0 then k_2() else k_3()

            end

        end

    end
    )
in
    let val x_9 = 100
    in
        let fun k_5 x_8 =
            let val x_10 = Int.toString x_8
 in
                let val x_11 = print x_10
 in
                    exit x_11
                end

            end

        in
            f (k_5, x_9)

        end

    end

end
