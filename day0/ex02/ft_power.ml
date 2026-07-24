let rec ft_power a b =
  if b = 0 then 1 else if b > 1 then a * ft_power a (b - 1) else a

let () = Printf.printf "%d\n%d\n" (ft_power 3 1) (ft_power 3 0)
