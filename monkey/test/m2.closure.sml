datatype ('a, 'b) s = In1 of 'a | In2 of 'b
fun exit x = ()
val cps_code =
let val x_31 = "z"
in
    let val x_32 = In1 x_31
    in
        let fun k_239 env_400 x_30 =
            exit x_30

        in
            let val env_401 = ()
            in
                let val k_12 = (k_239, env_401)
                in
                    let fun k_240 env_399 x =
                        let val k_12 = #1 env_399
                        in
                            let val x_33 = "A"
                            in
                                let val x_34 = "AA"
                                in
                                    let val x_35 = (x_33, x_34)
                                    in
                                        let val k_242 = #1 k_12
                                        in
                                            let val env_403 = #2 k_12
                                            in
                                                k_242 (env_403, x_35)

                                            end

                                        end
                                    end
                                end
                            end

                        end

                    in
                        let val env_402 = (k_12)
                        in
                            let val k_13 = (k_240, env_402)
                            in
                                let fun k_243 env_398 x1 =
                                    let val k_12 = #1 env_398
                                    in
                                        let val x_36 = "B"
                                        in
                                            let val x_37 = "BB"
                                            in
                                                let val x_38 = (x_36, x_37)
                                                in
                                                    let val k_245 = #1 k_12
                                                    in
                                                        let val env_405 = #2 k_12
                                                        in
                                                            k_245 (env_405, x_38)

                                                        end

                                                    end
                                                end
                                            end
                                        end

                                    end

                                in
                                    let val env_404 = (k_12)
                                    in
                                        let val k_14 = (k_243, env_404)
                                        in
                                            case x_32
                                             of In1 x_281 =>
                                                let val k_247 = #1 k_13
                                                in
                                                    let val env_406 = #2 k_13
                                                    in
                                                        k_247 (env_406, x_281)

                                                    end

                                                end
                                             | In2 x_282 =>
                                                let val k_249 = #1 k_14
                                                in
                                                    let val env_407 = #2 k_14
                                                    in
                                                        k_249 (env_407, x_282)

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
    end
end
