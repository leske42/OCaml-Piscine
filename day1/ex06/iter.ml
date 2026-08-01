let rec iter f x n =
  if n < 0 then -1
  else if n = 0 then x
  else f (iter f x (n - 1))
  

let () = Printf.printf "%d\n" (iter (fun x -> x * x) 2 1);
Printf.printf "%d\n" (iter (fun x -> x * x) 2 2);
Printf.printf "%d\n" (iter (fun x -> x * x) 2 4) (*2 * 2 -> 4 * 4 -> 16 * 16 -> 256 * 256*)
