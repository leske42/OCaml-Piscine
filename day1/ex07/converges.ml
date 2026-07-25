let rec iter f x n =
  if n < 0 then -1 else if n = 0 then x else f (iter f x (n - 1))

let converges f x n = if iter f x n = iter f x (n + 1) then true else false

let () =
  if converges (( * ) 2) 2 5 then Printf.printf "true\n"
  else Printf.printf "false\n";
  if converges (fun x -> x / 2) 2 3 then Printf.printf "true\n"
  else Printf.printf "false\n";
  if converges (fun x -> x / 2) 2 2 then Printf.printf "true\n"
  else Printf.printf "false\n"
