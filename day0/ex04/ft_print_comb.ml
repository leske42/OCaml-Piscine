let printnum a b c =
  print_int a;
  print_int b;
  print_int c;
  if a <> 7 then print_string ", "

let rec hehe a b c =
  if a < 8 && b < 9 && c < 10 then (
    printnum a b c;
    if c = 9 then
      if b = 8 then hehe (a + 1) (a + 2) (a + 3) else hehe a (b + 1) (b + 2)
    else hehe a b (c + 1))

let ft_print_comb =
  hehe 0 1 2;
  print_string "\n"

let () = ft_print_comb
