let month_length m = 
        if m = "Feb" then 28 
        else if (m = "Sep" || m = "Apr" || m = "June" || m = "Nov") then 30 
        else 31

let () = assert((month_length "Sep") = 30)
let () = assert((month_length "Feb") = 28)

let valid_date m d = month_length m >= d && d > 0

let () = assert(valid_date "Feb" 10)
let () = assert(valid_date "Sep" 30 )
let () = assert(valid_date "May" 31 )
let () = assert(valid_date "Apr" 1 )
let () = assert(not (valid_date "Apr" 0 ))
let () = assert(not (valid_date "Feb" 0 ))
         
