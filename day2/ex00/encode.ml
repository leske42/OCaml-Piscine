let encode lst =
  let rec accumulator lst acc =
    match lst with
    | [] -> []
    | first :: second :: rest when first = second -> accumulator (second::rest) (acc + 1)
    | first :: rest -> ((acc, first) :: (accumulator rest 1))
  in accumulator lst 1

let print_tuple x =
  Printf.printf "(%d %d)" (fst x) (snd x)

let () = List.iter (print_tuple) (encode [1; 1; 1]);
  print_char '\n';
  List.iter (print_tuple) (encode [1; 2; 2; 2; 1]);
  print_char '\n';
