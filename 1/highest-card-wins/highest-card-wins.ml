type card = Joker | Val of int;;

let win p d = 
  let has_joker x = match x with 
  |Joker -> true
  |_ ->false 
  in
  if (has_joker d) then false 
  else
    if has_joker p  then 
     true
    else
      match p, d with
    | Val p_val, Val d_val -> p_val > d_val  
    | _, _ -> false 
 

  