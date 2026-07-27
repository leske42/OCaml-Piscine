let ft_sum f low up =
  let rec subfunc acc low =
    match low with
    | _ when low > up -> acc
    | _ -> subfunc (acc +. (f low)) (low + 1)
  in subfunc 0.0 low

let rec on_power_of n x =
  let rec subfunc n acc =
    match n with
    | 0 -> 1
    | 1 -> acc
    | _ -> subfunc (n - 1) (acc * x)
  in subfunc n x

let leibniz i = 
  float_of_int (-1 |> on_power_of i) /. float_of_int (2 * i + 1)

let leibniz_pi delta =
  let rec subfunc iter goal =
    

let () = Printf.printf "%.2f\n" (ft_sum (fun i -> float_of_int (i * i)) 1 10)
