let rec contains elem lst =
  match lst with
  | [] -> false
  | x :: rest when x = elem -> true
  | x :: rest -> contains elem rest

let rec crossover lst1 lst2 =
  match lst1 with
  | [] -> []
  | x :: rest when lst2 |> contains x -> x :: crossover rest lst2
  | x :: rest -> crossover rest lst2

let () =
  List.iter (Printf.printf "%d ") (crossover [ 1; 2; 3 ] [ 3; 4; 5; 1 ]);
  print_char '\n';
  List.iter (Printf.printf "%d ") (crossover [ 4; 5; 6; 8 ] [ 6; 4; 5; 7 ]);
  print_char '\n';
  List.iter (Printf.printf "%d ") (crossover [ 4; 5; 6; 8 ] []);
  print_char '\n'
