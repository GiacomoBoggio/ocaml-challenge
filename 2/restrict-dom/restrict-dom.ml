let restrict f p = 
  fun x -> if p x then Some (f x) else None