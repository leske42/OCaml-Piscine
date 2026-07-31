let () =
  Printf.printf "The next value to Queen is: %s (short) and %s (long)\n"
    (Card.Value.toString (Card.Value.next Queen))
    (Card.Value.toStringVerbose (Card.Value.next Queen));
  try
    Printf.printf "The Previous value to T2 is: %s (short) and %s (long)\n"
      (Card.Value.toString (Card.Value.previous T2))
      (Card.Value.toStringVerbose (Card.Value.previous T2))
  with invalid_arg -> Printf.printf "invalid argument in test 2\n";
  let cardval = (Card.newCard T2 Spade) in
  Printf.printf "Our new card is: %s (short) and %s (long)\n"
      (Card.toString cardval) (Card.toStringVerbose cardval);
  (* Printf.printf "The Previous value to Jack is: %s (short) and %s (long)\n"
      (Card.Value.toString (Card.Value.previous Jack))
      (Card.Value.toStringVerbose (Card.Value.previous Jack)) *)