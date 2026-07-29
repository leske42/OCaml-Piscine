let print_nums a b =
  let print_num i =
  if i >= 0 && i <= 9 then (print_int 0; print_int i) else print_int i
  in
  if not (a = 0 && b = 1) then print_char ' ';
  print_num a; print_char ' '; print_num b;
  if not (a = 98 && b = 99) then print_char ','

let ft_print_comb2 () =
  let rec subfunc a b =
    print_nums a b;
    if b = 99 then (if a = 98 then () else (subfunc (a + 1) (a + 2)))
    else subfunc a (b + 1)
  in subfunc 0 1; print_char '\n'


let () = ft_print_comb2 ()
