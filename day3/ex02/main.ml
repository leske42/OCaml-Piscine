let () =
  Printf.printf "The next value to Queen is: %s (short) and %s (long)\n"
    (Card.Value.toString (Card.Value.next Queen))
    (Card.Value.toStringVerbose (Card.Value.next Queen));
  let cardval = (Card.newCard T2 Spade) in
  Printf.printf "Our new card is: %s (short) and %s (long)\n"
      (Card.toString cardval) (Card.toStringVerbose cardval);
  Printf.printf "The highest card of this deck is: %s\n"
  (Card.toStringVerbose (Card.best [cardval; (Card.newCard T10 Spade); (Card.newCard As Heart); (Card.newCard Queen Club)]));
  Printf.printf "%s is a Spade: %b\n" (Card.toStringVerbose cardval) (Card.isSpade cardval);
  Printf.printf "%s is a Heart: %b\n" (Card.toStringVerbose cardval) (Card.isHeart cardval);
