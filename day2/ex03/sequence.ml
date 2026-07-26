let encode lst =
  let rec accumulator lst acc =
    match lst with
    | [] -> []
    | first :: second :: rest when first = second -> accumulator (second::rest) (acc + 1)
    | first :: rest -> acc :: first :: (accumulator rest 1)
  in accumulator lst 1
  
let rec int_to_str n =
  match n with
  | 1 -> "1"
  | 2 -> "2"
  | 3 -> "3"
  | 4 -> "4"
  | 5 -> "5"
  | 6 -> "6"
  | 7 -> "7"
  | 8 -> "8"
  | 9 -> "9"
  | 0 -> "0"
  | _ -> int_to_str (n / 10) ^ int_to_str (n mod 10)

let rec list_to_str lst =
  match lst with
  | [] -> ""
  | x::rest -> int_to_str x ^ list_to_str rest

let sequence n =
  let rec subfunc n =
  match n with
  | 0 -> []
  | 1 -> [1]
  | _ -> encode (subfunc (n - 1))
  in list_to_str (subfunc n)

let () = Printf.printf "%s\n" (sequence 4);
  Printf.printf "%s\n" (sequence 7)
