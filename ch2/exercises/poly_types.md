let f x = if x then x else x
f: bool -> bool = <fun>

let g x y = if y then x else x
g: 'a -> bool -> 'a

let h x y z = if x then y else z
bool -> 'a -> 'a -> 'a

let i x y z = if x then y else y
bool -> 'a -> 'b -> 'a
