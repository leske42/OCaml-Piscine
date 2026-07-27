let ft_is_palindrome str =
  let rec subfunc i =
    if i <= (String.length str) / 2 then
      if String.(get str (length str - i)) <> String.(get str (i - 1)) then false
      else subfunc (i + 1)
    else true
  in
  subfunc 1

let () = Printf.printf "%b\n%b\n%b\n%b\n"
  (ft_is_palindrome "1221") (ft_is_palindrome "12521") (ft_is_palindrome "hehe") (ft_is_palindrome "")
