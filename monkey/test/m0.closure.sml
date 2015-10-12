datatype ('a, 'b) s = In1 of 'a | In2 of 'b
fun exit x = ()
val cps_code =
let val x_290 = fn (env_409, k_15, x) => 
        let val x_42 = 99
        in
            let val k_251 = #1 k_15
            in
                let val env_411 = #2 k_15
                in
                    k_251 (env_411, x_42)

                end

            end
        end


in
    let val env_410 = ()
    in
        let val x_41 = (x_290, env_410)
        in
            exit x_41
        end
    end
end
