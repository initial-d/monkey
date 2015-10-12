datatype ('a, 'b) s = In1 of 'a | In2 of 'b
fun exit x = ()
val cps_code =
let val x_19 = fn (env_29, k_6, x) => 
        let val x_20 = fn (env_27, k_7, y) => 
                let val x = #1 env_27
                in
                    let val k_17 = #1 k_7
                    in
                        let val env_32 = #2 k_7
                        in
                            k_17 (env_32, x)

                        end

                    end

                end


        in
            let val env_31 = (x)
            in
                let val x_14 = (x_20, env_31)
                in
                    let val k_19 = #1 k_6
                    in
                        let val env_33 = #2 k_6
                        in
                            k_19 (env_33, x_14)

                        end

                    end
                end
            end
        end


in
    let val env_30 = ()
    in
        let val x_13 = (x_19, env_30)
        in
            exit x_13
        end
    end
end
