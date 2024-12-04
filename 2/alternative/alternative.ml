let ( <|> ) f o = match f with
| Some _ -> f
| None -> o