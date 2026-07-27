let ft_sum f low up =
  let rec subfunc acc low =
    match low with
    | _ when low > up -> acc
    | _ -> subfunc (acc +. (f low)) (low + 1)
  in subfunc 0.0 low

let () = Printf.printf "%.2f\n" (ft_sum (fun i -> float_of_int (i * i)) 1 10)
