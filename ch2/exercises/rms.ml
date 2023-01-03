let rms x y = 
        sqrt ((x**2.0 +. y**2.0) /. 2.0)

let eq x y = if x > y then x -. y < 0.01 else y -. x < 0.01

let () = assert(eq (rms 2.0 2.0) 2.000)
let () = assert(eq (rms 4.0 7.0) 5.700)
