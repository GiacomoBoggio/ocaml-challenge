type suit = S | H | D | C;;
type card = Card of int * suit;;

let straight (c1, c2, c3, c4, c5) =
  (* Extract values from the cards *)
  let values = [c1; c2; c3; c4; c5] |> List.map (fun (Card (v, _)) -> v) in

  (* Sort the values in increasing order *)
  let sorted_values = List.sort compare values in

  (* Check if the values are consecutive *)
  let rec check_consecutive = function
    | [] | [_] -> true  (* Empty or single element list is trivially consecutive *)
    | x :: y :: tl when y = x + 1 -> check_consecutive (y :: tl)
    | _ -> false
  in

  (* Check for the normal consecutive case *)
  if check_consecutive sorted_values then true
  (* Special case: Ace as low, i.e., [14, 2, 3, 4, 5] becomes [1, 2, 3, 4, 5] *)
  else if sorted_values = [2; 3; 4; 5; 14] then true
  else false
;;
