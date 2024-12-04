let f1 x = x > 0;;

let f2 x = if x then 1 else 0;;

let f3 x = ( x, x mod 2 = 0 );;

let f4 (x, b) = if b then x else 0;;

let f5 x = (fun y -> x + y );;

let f6 x = (fun y -> x = y );;

let f7 b = (fun x -> if b then x > 0 else x < 0);;

let f8 b = (fun b2-> if b && b2 then 1 else 0);;

let f9 b = (fun x -> if b then x+x else 0 );;

let f10 f = f 2;;

let f11 f = if f 0 then 1 else 0;;

let f12 f = f true;;

let f13 f = f 0;;

let f14 f = if f true then 1 else 0;;

let f15 x (y,z) = x + y + z;;

let f16 x = (fun y -> (fun z -> x + y + z));;

let f17 f = f;;

let f18 f = f (fun x -> x + 1);;

let f19 f = (fun b -> f 1 > 0);;

let f20 p = (fun b -> if p 0 then 1 else 0);;