let best_offer x y z = 
    let compara a b = match (a, b) with
    | Some a, Some b -> Some (if a > b then a else b)
    | Some a, None -> Some a
    | None, Some b -> Some b
    | None, None -> None 
  in
  compara (compara x y) z
