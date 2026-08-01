let () = Printf.printf "Full deck length: %d\n" (List.length Deck.Card.all);
  let deck = Deck.newDeck () in
  List.iter (Printf.printf "%s; ") (Deck.toStringListVerbose (deck));
  let draw_result = Deck.drawCard deck in
  Printf.printf "\nDrawing first card... \nCard is: %s\n" (Deck.Card.toStringVerbose (fst draw_result));
  Printf.printf "Drawing all cards out of the deck...";
  try
  let rec keep_drawing deck =
    keep_drawing (snd (Deck.drawCard deck))
  in keep_drawing deck
  with Failure reason -> Printf.printf "%s\n" reason

