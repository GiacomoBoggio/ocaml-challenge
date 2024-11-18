let nand a b = not (a && b)

let nand a b = if a && b then false else true

let nand a b = 
  match (a, b) with
  | (true, true) -> false
  | _ -> true