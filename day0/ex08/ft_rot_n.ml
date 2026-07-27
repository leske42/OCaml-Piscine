let rot_one c =
  match c with
  | 'a' .. 'y' -> char_of_int (int_of_char c + 1)
  | 'z' -> 'a'
  | 'A' .. 'Y' -> char_of_int (int_of_char c + 1)
  | 'Z' -> 'A'
  | _ -> c

let rec ft_rot_n n str =
  match n with
  | 0 -> str
  | _ -> ft_rot_n (n - 1) (String.map rot_one str)

let () =
  Printf.printf "%s\n" (ft_rot_n 1 "abcdefghijklmnopqrstuvwxyz");
  Printf.printf "%s\n" (ft_rot_n 13 "abcdefghijklmnopqrstuvwxyz");
  Printf.printf "%s\n" (ft_rot_n 2 "OI2EAS67B9");
  Printf.printf "%s\n" (ft_rot_n 1 "NBzlk qnbjr !")
