let in_range x a b = x>=a && x<= b 

let in_range x a b = 
  let lower = if a < b then a else b in
  let upper = if a > b then a else b in
  x >= lower && x <= upper