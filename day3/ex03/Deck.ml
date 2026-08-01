 module Card = struct 
  module Color = struct
    type t = Spade | Heart | Diamond | Club

    let all = [ Spade; Heart; Diamond; Club ]

    let toString = function
      | Spade -> "S"
      | Heart -> "H"
      | Diamond -> "D"
      | Club -> "C"

    let toStringVerbose = function
      | Spade -> "Spade"
      | Heart -> "Heart"
      | Diamond -> "Diamond"
      | Club -> "Club"
    
    let next = function
      | Spade -> Heart
      | Heart -> Diamond
      | Diamond -> Club
      | Club -> Spade
  end

  module Value = struct
    type t =
      | T2
      | T3
      | T4
      | T5
      | T6
      | T7
      | T8
      | T9
      | T10
      | Jack
      | Queen
      | King
      | As

    let all = [ T2; T3; T4; T5; T6; T7; T8; T9; T10; Jack; Queen; King; As ]

    let toT = function
      | 1 -> T2
      | 2 -> T3
      | 3 -> T4
      | 4 -> T5
      | 5 -> T6
      | 6 -> T7
      | 7 -> T8
      | 8 -> T9
      | 9 -> T10
      | 10 -> Jack
      | 11 -> Queen
      | 12 -> King
      | 13 -> As
      | _ -> invalid_arg "value out of range"

    let toInt = function
      | T2 -> 1
      | T3 -> 2
      | T4 -> 3
      | T5 -> 4
      | T6 -> 5
      | T7 -> 6
      | T8 -> 7
      | T9 -> 8
      | T10 -> 9
      | Jack -> 10
      | Queen -> 11
      | King -> 12
      | As -> 13

    let toString = function
      | T2 -> "2"
      | T3 -> "3"
      | T4 -> "4"
      | T5 -> "5"
      | T6 -> "6"
      | T7 -> "7"
      | T8 -> "8"
      | T9 -> "9"
      | T10 -> "10"
      | Jack -> "J"
      | Queen -> "Q"
      | King -> "K"
      | As -> "A"

    let toStringVerbose = function
      | T2 -> "2"
      | T3 -> "3"
      | T4 -> "4"
      | T5 -> "5"
      | T6 -> "6"
      | T7 -> "7"
      | T8 -> "8"
      | T9 -> "9"
      | T10 -> "10"
      | Jack -> "Jack"
      | Queen -> "Queen"
      | King -> "King"
      | As -> "As"

    let next = function any -> toT (toInt any + 1)
    let previous = function any -> toT (toInt any - 1)
  end

  type t = { value : Value.t; color : Color.t }
  let newCard (value : Value.t) (color : Color.t) = { value; color }

  let rec generate_suit value acc color =
    match value with
    | Value.As -> ((newCard value color)::acc)
    | _ -> generate_suit (Value.next value) ((newCard value color)::acc) color

  let allSpades = generate_suit Value.T2 [] Color.Spade
    
  let allHearts = generate_suit Value.T2 [] Color.Heart
    
  let allDiamonds = generate_suit Value.T2 [] Color.Diamond
    
  let allClubs = generate_suit Value.T2 [] Color.Club
    
  let all = allSpades@allHearts@allDiamonds@allClubs

  let getValue card = card.value
  let getColor card = card.color

  let toString card = Value.toString (getValue card) ^ Color.toString (getColor card)
  let toStringVerbose card = "Card(" ^ Value.toStringVerbose (getValue card) ^ ", " ^ Color.toStringVerbose (getColor card) ^ ")"

  let compare left right =
    Value.toInt (getValue left) - Value.toInt (getValue right)
  let max left right = if compare left right < 0 then right else left
  let min left right = if compare left right > 0 then right else left
  let best lst =
    match lst with
    | [] -> invalid_arg "empty list"
    | first :: rest -> List.fold_left max first rest
  (*fold left behavior: f (... (f (f init b1) b2) ...) bn*)

  let isOf (card : t) (color : Color.t) = getColor card = color
  let isSpade card = isOf card Color.Spade
  let isHeart card = isOf card Color.Heart
  let isDiamond card = isOf card Color.Diamond
  let isClub card = isOf card Color.Club
end

type t = Card.t list

let newDeck () = 
  Random.self_init ();
  let swap i j lst =
    let swap_values idx cur_value =
      match idx with
      | x when x = i -> List.nth lst j
      | x when x = j -> List.nth lst i
      | _ -> cur_value
    in
    if i = j then lst else List.mapi swap_values lst
  in
  let rec shuffleDeck lst turn =
    match turn with
    | 52 -> lst
    | _ -> shuffleDeck (swap turn (Random.int 52) lst) (turn + 1)
  in
  shuffleDeck Card.all 0

(* let rec print_deck deck =
  match deck with
  | [] -> ()
  | x::rest -> Printf.printf "%s; " (Deck.Card.toStringVerbose x); print_deck rest
  in
  print_deck (Deck.newDeck) *)

let toStringList lst =
  let rec build_list lst acc =
    match lst with
    | [] -> acc
    | x::rest -> build_list rest ((Card.toString x)::acc)
  in
  List.rev (build_list lst [])

let toStringListVerbose lst =
  let rec build_list lst acc =
    match lst with
    | [] -> acc
    | x::rest -> build_list rest ((Card.toStringVerbose x)::acc)
  in
  List.rev (build_list lst [])

let drawCard lst =
  Random.self_init ();
  let rec fold_card_out lst idx goal =
    match lst with
    | x::rest when idx = goal -> rest
    | x::rest -> fold_card_out (rest@[x]) (idx + 1) goal
    | [] -> raise (Failure "Cannot draw from empty deck")
  in
  let chosen = Random.int 52 in
  (List.nth lst chosen, fold_card_out lst 0 chosen)

let drawCard lst =
  match lst with
  | x::rest -> (x, rest)
  | [] -> raise (Failure "Cannot draw from empty deck")