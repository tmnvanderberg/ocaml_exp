let rec fib n = 
        if n == 1 || n == 2 then 1
        else fib (n - 1) + fib (n - 2)

let () = assert(fib 15 = 610)

let rec h n pp p = 
        if n = 1 then p
        else h (n - 1) p (pp + p) 

let rec fast_fib n = h n 0 1

let () = assert(fast_fib 15 = 610)
