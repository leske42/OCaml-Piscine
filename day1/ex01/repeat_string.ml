
let rec repeat_string ?str:(str = "x") n =
  if n < 0 then "Error" else if n = 0 then "" else (str ^ repeat_string ~str:str (n - 1))

let () =
  Printf.printf "%s\n%s\n%s\n" (repeat_string ~str:"a" 10) (repeat_string 3) (repeat_string (-1))
