let rec ft_countdown a =
  if a < 0 then print_int 0 else print_int a;
  print_char '\n';
  if a > 0 then ft_countdown (a - 1)

let () =
  ft_countdown 3;
  ft_countdown 0;
  ft_countdown (-1)
