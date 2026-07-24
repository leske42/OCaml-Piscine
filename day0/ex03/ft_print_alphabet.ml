let rec hehe a =
  print_char a; if a <> 'z' then hehe (char_of_int ((int_of_char a) + 1)) else ()

let rec ft_print_alphabet =
  hehe 'a';
  print_char '\n'

let () = ft_print_alphabet
