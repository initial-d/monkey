datatype ('a, 'b) s = In1 of 'a | In2 of 'b
fun exit x = ()
val cps_code =
let fun x_226(env_326, k_72, x) = (
    let val f = (x_226, env_326)
    in
        let fun k_187 env_323 x_121 =
            let val k_72 = #1 env_323
            in
                let val k_189 = #1 k_72
                in
                    let val env_329 = #2 k_72
                    in
                        k_189 (env_329, x_121)

                    end

                end

            end

        in
            let val env_328 = (k_72)
            in
                let val k_73 = (k_187, env_328)
                in
                    let fun k_190 env_322 x_122 =
                        let val k_73 = #1 env_322
                        in
                            let val x_124 = 0
                            in
                                let val k_192 = #1 k_73
                                in
                                    let val env_331 = #2 k_73
                                    in
                                        k_192 (env_331, x_124)

                                    end

                                end
                            end

                        end

                    in
                        let val env_330 = (k_73)
                        in
                            let val k_74 = (k_190, env_330)
                            in
                                let fun k_193 env_321 x_123 =
                                    let val f = #1 env_321
                                    in
                                        let val k_73 = #2 env_321
                                        in
                                            let val x = #3 env_321
                                            in
                                                let val x_126 = 1
                                                in
                                                    let val x_127 = x-x_126
                                                    in
                                                        let fun k_194 env_318 x_125 =
                                                            let val k_73 = #1 env_318
                                                            in
                                                                let val x = #2 env_318
                                                                in
                                                                    let val x_128 = x+x_125
                                                                    in
                                                                        let val k_196 = #1 k_73
                                                                        in
                                                                            let val env_334 = #2 k_73
                                                                            in
                                                                                k_196 (env_334, x_128)

                                                                            end

                                                                        end

                                                                    end

                                                                end

                                                            end

                                                        in
                                                            let val env_333 = (k_73, x)
                                                            in
                                                                let val k_76 = (k_194, env_333)
                                                                in
                                                                    let val x_228 = #1 f
                                                                    in
                                                                        let val env_335 = #2 f
                                                                        in
                                                                            x_228 (env_335, k_76, x_127)

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
                                    let val env_332 = (f, k_73, x)
                                    in
                                        let val k_75 = (k_193, env_332)
                                        in
                                            let val x_225 = ()
                                            in
                                                if x= 0
                                                then
                                                    let val k_198 = #1 k_74
                                                    in
                                                        let val env_336 = #2 k_74
                                                        in
                                                            k_198 (env_336, x_225)

                                                        end

                                                    end
                                                else
                                                    let val k_200 = #1 k_75
                                                    in
                                                        let val env_337 = #2 k_75
                                                        in
                                                            k_200 (env_337, x_225)

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
    let val env_327 = ()
    in
        let val f = (x_226, env_327)
        in
            let val x_130 = 100
            in
                let fun k_201 env_325 x_129 =
                    exit x_129

                in
                    let val env_338 = ()
                    in
                        let val k_77 = (k_201, env_338)
                        in
                            let val x_230 = #1 f
                            in
                                let val env_339 = #2 f
                                in
                                    x_230 (env_339, k_77, x_130)

                                end

                            end
                        end
                    end

                end
            end
        end
    end

end
