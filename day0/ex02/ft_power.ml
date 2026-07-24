let rec ft_power a b =
  if b > 1 then a * ft_power a (b - 1) else a

let () = print_int (ft_power 3 1)
