let rec iter f x n =
  if n < 0 then -1
  else if n = 0 then x
  else f (iter f x (n - 1))
  

let () = Printf.printf "%d\n" (iter (fun x -> x * x) 2 4)
