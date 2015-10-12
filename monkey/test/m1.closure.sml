datatype ('a, 'b) s = In1 of 'a | In2 of 'b
fun exit x = ()
val cps_code =
let val x_293 = fn (env_413, k_17, x) => 
        let val x_45 = #1 x
        in
            let val k_253 = #1 k_17
            in
                let val env_417 = #2 k_17
                in
                    k_253 (env_417, x_45)

                end

            end

        end


in
    let val env_416 = ()
    in
        let val x_44 = (x_293, env_416)
        in
            let val x_46 = "a"
            in
                let val x_47 = "b"
                in
                    let val x_48 = (x_46, x_47)
                    in
                        let fun k_254 env_415 x_43 =
                            exit x_43

                        in
                            let val env_418 = ()
                            in
                                let val k_16 = (k_254, env_418)
                                in
                                    let val x_295 = #1 x_44
                                    in
                                        let val env_419 = #2 x_44
                                        in
                                            x_295 (env_419, k_16, x_48)

                                        end

                                    end
                                end
                            end

                        end
                    end
                end
            end
        end
    end
end
