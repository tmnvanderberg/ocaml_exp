#require "float.top"

let cube fl = fl ** 3.0
let () = assert (cube 3.0 = 27.0)
let () = assert (cube 1.0 = 1.0)
let () = assert (cube 2.0 = 8.0)

let sgn i = if i < 0 then -1 else (if i > 0 then 1 else 0)
let () = assert (sgn (-5) = -1)
let () = assert (sgn 0 = 0)
let () = assert (sgn 123 = 1)

let closeEnough x y eps = 
        if (x > y) then x -. y < eps else y -. x < eps

let circArea r = 
        r**2.0 *. Float.pi

let eps = 0.001

let () = assert(closeEnough (circArea 4.0) 50.26548 eps)
let () = assert(closeEnough (circArea 0.0) 0.0 eps)
let () = assert(closeEnough (circArea 1.0) Float.pi eps)
        

