datatype ('a, 'b) s = In1 of 'a | In2 of 'b
fun exit x = ()
val cps_code =
let val x_56 = 2
in
    let fun k_260 env_438 x_53 =
        exit x_53

    in
        let val env_439 = ()
        in
            let val k_21 = (k_260, env_439)
            in
                let fun k_261 env_437 x_54 =
                    let val k_21 = #1 env_437
                    in
                        let val x_57 = 0
                        in
                            let val k_263 = #1 k_21
                            in
                                let val env_441 = #2 k_21
                                in
                                    k_263 (env_441, x_57)

                                end

                            end
                        end

                    end

                in
                    let val env_440 = (k_21)
                    in
                        let val k_22 = (k_261, env_440)
                        in
                            let fun k_264 env_436 x_55 =
                                let val k_21 = #1 env_436
                                in
                                    let val x_58 = 1
                                    in
                                        let val k_266 = #1 k_21
                                        in
                                            let val env_443 = #2 k_21
                                            in
                                                k_266 (env_443, x_58)

                                            end

                                        end
                                    end

                                end

                            in
                                let val env_442 = (k_21)
                                in
                                    let val k_23 = (k_264, env_442)
                                    in
                                        let val x_310 = ()
                                        in
                                            if x_56= 0
                                            then
                                                let val k_268 = #1 k_22
                                                in
                                                    let val env_444 = #2 k_22
                                                    in
                                                        k_268 (env_444, x_310)

                                                    end

                                                end
                                            else
                                                let val k_270 = #1 k_23
                                                in
                                                    let val env_445 = #2 k_23
                                                    in
                                                        k_270 (env_445, x_310)

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
