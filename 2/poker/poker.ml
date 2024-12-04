type suit = S | H | D | C;;
type card = Card of int * suit;;

let rndHand () =
  let random_suit () = match Random.int 4 with
    | 0 -> S
    | 1 -> H
    | 2 -> D
    | _ -> C
  in
  let random_card () = Card (Random.int 13 + 1, random_suit ()) in
  (random_card (), random_card (), random_card (), random_card (), random_card ())

  let poker (c1, c2, c3, c4, c5) =
    let cards = [c1; c2; c3; c4; c5] in
  
    (* Funzione per ottenere il valore numerico di una carta (ignora il seme) *)
    let value_of_card (Card (v, _)) = v in
  
    (* Conta le occorrenze di ogni valore nelle carte *)
    let counts = List.fold_left (fun acc card ->
      let value = value_of_card card in
      let current_count = try List.assoc value acc with Not_found -> 0 in
      (value, current_count + 1) :: (List.remove_assoc value acc)
    ) [] cards in
  
    (* Verifica se c'è un valore che appare 4 volte *)
    let four_of_a_kind = List.exists (fun (_, count) -> count = 4) counts in
  
    (* Controlla che tutte e 4 le carte abbiano semi diversi *)
    let suits = List.map (fun (Card (_, s)) -> s) cards in
    let unique_suits = List.sort_uniq compare suits in
    four_of_a_kind && List.length unique_suits = 4
  
    (*----*)

let rec count_occurrences card values =
  match card with
  | Card (value, _) ->
    match values with
    | [] -> [(value, 1)]  (* Se la lista è vuota, aggiungiamo una nuova occorrenza per il valore *)
    | (v, count) :: tl when v = value -> (v, count + 1) :: tl  (* Se il valore è già presente, incrementiamo il contatore *)
    | hd :: tl -> hd :: count_occurrences card tl  (* Se il valore non è presente, lasciamo la lista invariata *)

        
let poker (c1, c2, c3, c4, c5) =
  let cards = [c1; c2; c3; c4; c5] in

  (* Funzione che conta le occorrenze dei valori nelle carte *)
  let rec count_cards cards values =
    match cards with
    | [] -> values
    | card :: tl -> count_cards tl (count_occurrences card values)
  in

  (* Conta le occorrenze dei valori nelle carte *)
  let values_count = count_cards cards [] in

  (* Verifica se esiste un valore che appare almeno 4 volte *)
  let four_of_a_kind = List.exists (fun (_, count) -> count >= 4) values_count in

  (* Verifica che i semi siano distinti *)
  let suits = [S; H; D; C] in
  let rec check_suits suits_seen remaining_cards =
    match remaining_cards with
    | [] -> List.length suits_seen = 4
    | Card (_, s) :: tl -> 
      if List.mem s suits_seen then
        check_suits suits_seen tl
      else
        check_suits (s :: suits_seen) tl
  in
  four_of_a_kind && check_suits [] cards
            
    
    

    