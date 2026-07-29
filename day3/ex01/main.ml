let () =
  Printf.printf "The next value to Queen is: %s (short) and %s (long)\n"
    (Value.toString (Value.next Queen))
    (Value.toStringVerbose (Value.next Queen));
  try
    Printf.printf "The Previous value to T2 is: %s (short) and %s (long)\n"
      (Value.toString (Value.previous T2))
      (Value.toStringVerbose (Value.previous T2))
  with invalid_arg -> Printf.printf "invalid argument in test 2\n";
  Printf.printf "The Previous value to Jack is: %s (short) and %s (long)\n"
      (Value.toString (Value.previous Jack))
      (Value.toStringVerbose (Value.previous Jack))
(* Printf.printf "The string of type Heart is: %s (short) and %s (long)\n" (Color.toString Heart) (Color.toStringVerbose Heart) *)
