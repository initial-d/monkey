datatype ('a, 'b) s = In1 of 'a | In2 of 'b
fun exit x = ()
val cps_code =
let val x_300 = fn (env_421, k_18, x) => 
        let val k_256 = #1 k_18
        in
            let val env_423 = #2 k_18
            in
                k_256 (env_423, x)

            end

        end


in
    let val env_422 = ()
    in
        let val x_49 = (x_300, env_422)
        in
            exit x_49
        end
    end
end
