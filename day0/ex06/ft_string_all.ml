let is_digit c =
  match c with
  | '1' .. '9' -> true
  | _ -> false

let ft_string_all f str =
  let rec subfunc i =
    if i <= String.length str then
      if f String.(get str (length str - i)) = false then false
      else subfunc (i + 1)
    else true
  in
  subfunc 1

let () = Printf.printf "%b\n" (ft_string_all is_digit "1234")
