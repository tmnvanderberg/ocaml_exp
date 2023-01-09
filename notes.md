# expressions
# strings
- concat with ^
- conversions: `string_of_int`, `string_of_float`, `string_of_bool`, `String.make`
# comparisons
- ==, != physical equality operators
- =, <> structural equality operators
# if expressions
- just an expression!
# let expressions
- let x = e1 in e2
- x in scope e2
- e1 'binding' expr, e2 'body' expr
how to understand this:
```
let x = 5 in 
  ((let x = 6 in x) + x)
```
alpha equivalence:
```
let x = 5 in (let x = 6 in x) + x
let x = 5 in (let y = 6 in y) + x
```
=>
```
let x = 5 in (let y = y in 6) + 5
```
- "new bindings shadow old bindings"
# type annotations
- (5 : int)
- optional, ocaml infers type for every expression
- compile-time only
# functions
- non-resursive: `let f x = ...`
- resursive: `let rec f x = ...`
## type deduction
- consider `let rec pow x y = if y = 0 then 1 else x * pow x (y - 1)`
- it's deduced:
```
val pow : int -> int -> int = <fun>
```
- if returns 1 in a branch => all branches must return int => pow returns int
- y is compared to 0 => y is int
- x is multiplied using * => x is int
- we could be explicit:
```
let rec pow (x: int) (y: int) : int = ...
```
## lambdas
- anonymous (lambda): `fun x -> x + 1`
- shocker: let expressions are semantically equivalent to lambda function application
``` 
let x = 42 in x + 9
```
is equivalent to
``` 
(fun x -> x + 9) 42 
```
## pipeline op
- |>
- infix op for fun application
``` 
5 |>inc |> square
```
# debugging
- print statements
- function traces: #trace fun

