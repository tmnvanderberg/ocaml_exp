let (+/.) x y = (x +. y) /. 2.0


let () = assert(4.0 +/. 10.0 = 7.)
