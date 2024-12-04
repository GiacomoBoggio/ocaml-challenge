let cf1 x =
  if x < 0 then failwith "Undefined for negative integers"
  else 0;;

let cf2 x =
  if x < 0 then failwith "undefined"
  else if x = 0 || x = 1 || x = 2 then 1
  else 0

let cf3 x =
  if x < 0 then failwith "undefined"
  else if x > 0 && x < 100 then 1
  else 0

let cf4 x =
  if x < 0 then failwith "undefined"
  else 0

let cf5 x =
  if x < 0 then failwith "undefined"
  else 1

let cf6 x =
  if x < 0 then failwith "undefined"
  else if x mod 2 = 0 then 1
  else 0
  
let cf7 x =
  if x < 0 then failwith "undefined"
  else 1
  
let cf8 x =
  if x < 0 then failwith "undefined"
  else 1

let cf9 x =
    if x < 0 then failwith "undefined"
    else 1

let cf10 x =
  if x < 0 then failwith "undefined"
  else if x >= 7 && x <= 9 then 1
  else 0

let cf11 x =
  if x < 0 then failwith "undefined"
  else if x mod 2 = 0  && x < 50 then 1
  else 0

let cf12 z =
  if z < 0 then failwith "undefined"
  else if z mod 2 = 0  && z < 50 then 1
  else 0

let cf13 z = 
  if z < 0 then failwith "undefined"
  else if z>=0 && z <=21 then 1
  else 0

let cf14 x =
  if x < 0 then failwith "undefined"
  else if x >= 2 then 1
  else 0

let cf1 x =
  if x < 2 then 0  (* I numeri minori di 2 non sono primi *)
  else
    let rec is_prime n d =
      if d * d > n then true  (* Se d è maggiore della radice quadrata di n, n è primo *)
      else if n mod d = 0 then false  (* Se n è divisibile per d, non è primo *)
      else is_prime n (d + 1)  (* Prova con il prossimo divisore *)
    in
    if is_prime x 2 then 1 else 0  (* Se x è primo, restituisci 1, altrimenti 0 *)
  