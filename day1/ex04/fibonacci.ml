let rec fibonacci n =
  if n < 0 then -1
  else if n = 0 then 0
  else if n = 1 then 1
  else fibonacci (n - 2) + fibonacci (n - 1)

let () = Printf.printf "%d\n" (fibonacci 15)
