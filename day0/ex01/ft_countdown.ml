let rec ft_countdown a =
  print_int a;
  print_char '\n';
  if a = 0 then () else ft_countdown (a - 1)

let () = ft_countdown 3