let rec subfunc a =
  print_char a; if a <> 'z' then subfunc (char_of_int ((int_of_char a) + 1)) else ()

let rec ft_print_alphabet =
  subfunc 'a';
  print_char '\n'

let () = ft_print_alphabet
