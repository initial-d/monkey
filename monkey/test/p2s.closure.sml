datatype ('a, 'b) s = In1 of 'a | In2 of 'b
fun exit x = ()
val cps_code =
let fun x_245(env_352, k_0, x) = (
    let val f = (x_245, env_352)
    in
        let fun k_202 env_349 x_0 =
            let val k_0 = #1 env_349
            in
                let val k_204 = #1 k_0
                in
                    let val env_355 = #2 k_0
                    in
                        k_204 (env_355, x_0)

                    end

                end

            end

        in
            let val env_354 = (k_0)
            in
                let val k_1 = (k_202, env_354)
                in
                    let fun k_205 env_348 x_1 =
                        let val k_1 = #1 env_348
                        in
                            let val x_3 = 0
                            in
                                let val k_207 = #1 k_1
                                in
                                    let val env_357 = #2 k_1
                                    in
                                        k_207 (env_357, x_3)

                                    end

                                end
                            end

                        end

                    in
                        let val env_356 = (k_1)
                        in
                            let val k_2 = (k_205, env_356)
                            in
                                let fun k_208 env_347 x_2 =
                                    let val f = #1 env_347
                                    in
                                        let val k_1 = #2 env_347
                                        in
                                            let val x = #3 env_347
                                            in
                                                let val x_5 = 1
                                                in
                                                    let val x_6 = x-x_5
                                                    in
                                                        let fun k_209 env_344 x_4 =
                                                            let val k_1 = #1 env_344
                                                            in
                                                                let val x = #2 env_344
                                                                in
                                                                    let val x_7 = x+x_4
                                                                    in
                                                                        let val k_211 = #1 k_1
                                                                        in
                                                                            let val env_360 = #2 k_1
                                                                            in
                                                                                k_211 (env_360, x_7)

                                                                            end

                                                                        end

                                                                    end

                                                                end

                                                            end

                                                        in
                                                            let val env_359 = (k_1, x)
                                                            in
                                                                let val k_4 = (k_209, env_359)
                                                                in
                                                                    let val x_247 = #1 f
                                                                    in
                                                                        let val env_361 = #2 f
                                                                        in
                                                                            x_247 (env_361, k_4, x_6)

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

                                in
                                    let val env_358 = (f, k_1, x)
                                    in
                                        let val k_3 = (k_208, env_358)
                                        in
                                            let val x_244 = ()
                                            in
                                                if x= 0
                                                then
                                                    let val k_213 = #1 k_2
                                                    in
                                                        let val env_362 = #2 k_2
                                                        in
                                                            k_213 (env_362, x_244)

                                                        end

                                                    end
                                                else
                                                    let val k_215 = #1 k_3
                                                    in
                                                        let val env_363 = #2 k_3
                                                        in
                                                            k_215 (env_363, x_244)

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
    )
in
    let val env_353 = ()
    in
        let val f = (x_245, env_353)
        in
            let val x_9 = 100
            in
                let fun k_216 env_351 x_8 =
                    let val x_10 = Int.toString x_8
 in
                        let val x_11 = print x_10
    in
                            exit x_11

                        end

                    end

                in
                    let val env_364 = ()
                    in
                        let val k_5 = (k_216, env_364)
                        in
                            let val x_249 = #1 f
                            in
                                let val env_365 = #2 f
                                in
                                    x_249 (env_365, k_5, x_9)

                                end

                            end
                        end
                    end

                end
            end
        end
    end

end
