#require "zarith.top"

let rec count n = 
        if n = 0 then 0 else 1 + count (n - 1)

let rec count_aux n acc =
        if n = 0 then acc else count_aux (n - 1) (acc + 1)

let count_tr n = count_aux n 0

let rect fact n =
        if n = 0 then 1 else n * fact (n - 1)

let rec fact_aux n acc =
        if n = 0 then acc else fact_aux (n - 1) (n * acc)

let fact_tr n = fact_aux n 1

let rec zfact_aux n acc =
        if Z.equal n Z.zero then acc else zfact_aux (Z.pred n) (Z.mul acc n)

let zfact_tr n = zfact_aux n Z.one

let inc_npr x =
        x + 1

let inc_pr x =
        let () = print_int x in 
        let () = print_char '\n' in
        x + 1


