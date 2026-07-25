let rec repeat_x n =
  if n < 0 then "Error" else if n = 0 then "" else ("x" ^ repeat_x (n - 1))

let () =
  Printf.printf "%s\n%s\n%s\n" (repeat_x 10) (repeat_x 0) (repeat_x (-10))
