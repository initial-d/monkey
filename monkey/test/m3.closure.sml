datatype ('a, 'b) s = In1 of 'a | In2 of 'b
fun exit x = ()
val cps_code =
let val x_303 = fn (env_425, k_20, x) => 
        let val k_258 = #1 k_20
        in
            let val env_429 = #2 k_20
            in
                k_258 (env_429, x)

            end

        end


in
    let val env_428 = ()
    in
        let val x_51 = (x_303, env_428)
        in
            let val x_52 = "hello"
            in
                let fun k_259 env_427 x_50 =
                    exit x_50

                in
                    let val env_430 = ()
                    in
                        let val k_19 = (k_259, env_430)
                        in
                            let val x_305 = #1 x_51
                            in
                                let val env_431 = #2 x_51
                                in
                                    x_305 (env_431, k_19, x_52)

                                end

                            end
                        end
                    end

                end
            end
        end
    end
end
