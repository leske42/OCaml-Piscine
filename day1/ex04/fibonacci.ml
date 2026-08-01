let fibonacci n =
  let rec accumulator round ~n_last:n_last ~last:last =
    match round with
    | x when x = n -> n_last + last
    | 0 -> accumulator (round + 1) ~n_last:0 ~last:1
    | 1 -> accumulator (round + 1) ~n_last:0 ~last:1
    | x -> accumulator (round + 1) ~n_last:last ~last:(n_last + last)
  in
  if n < 0 then -1 else accumulator 0 ~n_last:0 ~last:0

let () = Printf.printf "%d\n%d\n" (fibonacci 15) (fibonacci (-15))
