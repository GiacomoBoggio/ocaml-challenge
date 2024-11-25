type season = Spring | Summer | Autumn | Winter

let squirrel_play s t = 
  match s with 
  | Summer -> t >= 15 && t <= 35
  | _ -> t >= 15 && t <= 30

