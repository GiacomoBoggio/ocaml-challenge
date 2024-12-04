let option_map f o = match o with 
| None -> None
| Some x -> Some (f x)