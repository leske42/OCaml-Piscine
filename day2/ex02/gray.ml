let applied_to str to_insert =
  to_insert ^ (String.replace_all ~sub:" " ~by:(" " ^ to_insert) str)

let rec reverse list acc =
  match list with
  | [] -> acc
  | x::rest -> reverse rest (x::acc)

let reverse str =
  String.concat " " (reverse (String.split_on_char ' ' str) [])

let rec gray n =
    match n with
    | 1 -> "0 1"
    | _ -> (("0" |> applied_to (gray (n - 1))) ^ " " ^ reverse ("1" |> applied_to (gray (n - 1))))


let () = Printf.printf "GRAY 3: %s\n" (gray 3);
  Printf.printf "GRAY 5: %s\n" (gray 5)
