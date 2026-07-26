let rec applied_to lst str =
  match lst with
  | [] -> []
  | x :: rest -> (str ^ x) :: applied_to rest str

let rec gray n =
    match n with
    | 1 -> [ "0"; "1" ]
    | _ -> ("0" |> applied_to (gray (n - 1))) @ List.rev ("1" |> applied_to (gray (n - 1)))

(* let () =
  List.iter (Printf.printf "%d ") (crossover [ 1; 2; 3 ] [ 3; 4; 5; 1 ]);
  print_char '\n';
  List.iter (Printf.printf "%d ") (crossover [ 4; 5; 6; 8 ] [ 6; 4; 5; 7 ]);
  print_char '\n';
  List.iter (Printf.printf "%d ") (crossover [ 4; 5; 6; 8 ] []);
  print_char '\n' *)
