let rec applied_to lst str =
  match lst with
  | [] -> []
  | x :: rest -> (str ^ x) :: applied_to rest str
(*this will be reversed...*)

let rec gray n =
  let construct n ~forward:dir =
    match n with
    | 1 when dir = true -> [ "0" ]
    | 1 when dir = false -> [ "1" ]
    | x when dir = true -> "0" |> applied_to (gray (x - 1))
    | x when dir = false -> "1" |> applied_to (gray (x - 1))
    | _ -> [] (*why is this needed?*)
  in
  construct n ~forward:true @ List.rev (construct n ~forward:false)

(* let () =
  List.iter (Printf.printf "%d ") (crossover [ 1; 2; 3 ] [ 3; 4; 5; 1 ]);
  print_char '\n';
  List.iter (Printf.printf "%d ") (crossover [ 4; 5; 6; 8 ] [ 6; 4; 5; 7 ]);
  print_char '\n';
  List.iter (Printf.printf "%d ") (crossover [ 4; 5; 6; 8 ] []);
  print_char '\n' *)
