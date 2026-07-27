let ft_print_rev str =
  let rec subfunc i =
    if i <= String.length str then (
      print_char String.(get str (length str - i));
      subfunc (i + 1))
  in
  subfunc 1;
  print_char '\n'

let () =
  ft_print_rev "hehe";
  ft_print_rev "!puos tae ot ekil I";
  ft_print_rev ""
