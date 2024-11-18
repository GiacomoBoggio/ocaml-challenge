let xor a b = (a && not b) || (not a && b)

let xor a b = if a = b then false else true

let xor a b = 
  match (a, b) with
  | (true, false) -> true
  | (false, true) -> true
  | _ -> false