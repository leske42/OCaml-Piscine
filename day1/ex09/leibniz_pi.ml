let rec on_power_of n x =
  let rec subfunc n acc =
    match n with
    | 0 -> 1
    | 1 -> acc
    | _ -> subfunc (n - 1) (acc * x)
  in subfunc n x

let gap_small_enough goal cur delta = (*cause we cannot use abs function*)
  if goal -. cur < 0.0 then (if ((goal -. cur) *. -1.0 < delta) then true else false)
  else if ((goal -. cur) < delta) then true else false

let leibniz i =
  float_of_int (-1 |> on_power_of i) /. float_of_int ((2 * i) + 1)

let print goal acc delta =
  Printf.printf "Goal: %.4f | acc: %.4f delta: %.4f\n" goal (acc *. 4.0) delta

let leibniz_pi delta =
  let rec subfunc iter goal acc =
    if (gap_small_enough goal (acc *. 4.0) delta) then ((*print goal acc delta; *)iter) else (
    subfunc (iter + 1) goal (acc +. leibniz (iter - 1))
    )
  in subfunc 1 (4.0 *. (atan 1.0)) 0.0

let () =
Printf.printf "Iterations for delta of %.4f: %d\n" 1.0 (leibniz_pi 1.0);
Printf.printf "Iterations for delta of %.4f: %d\n" 0.1 (leibniz_pi 0.1);
Printf.printf "Iterations for delta of %.4f: %d\n" 0.01 (leibniz_pi 0.01);
Printf.printf "Iterations for delta of %.4f: %d\n" 0.001 (leibniz_pi 0.001);
Printf.printf "Iterations for delta of %.4f: %d\n" 0.0001 (leibniz_pi 0.0001)
