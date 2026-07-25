let rec iter f x n =
  if n < 0 then -1 else if n = 0 then x else iter f (f x) (n - 1)

let converges f x n =
  let hehe = iter f x n in
  if hehe = f hehe then true else false
  
let rec iter f x n prev =
  if x = prev then true else if n = 0 then false else iter f (f x) (n - 1) x

let converges f x n =
  if n < 0 then false else
  iter f (f x) n x

let () =
  if converges (( * ) 2) 2 5 then Printf.printf "true\n"
  else Printf.printf "false\n";
  if converges (fun x -> x / 2) 2 3 then Printf.printf "true\n"
  else Printf.printf "false\n";
  if converges (fun x -> x / 2) 2 200000000 then Printf.printf "true\n"
  else Printf.printf "false\n"
