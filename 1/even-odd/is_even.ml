let rec is_even x = (x / 2) * 2 = x

let win a b = 
  if not (a>= 1 && a<=5 && b>=1 && b<=5) then 0
  else if (a>= 1 && a<=5 ) then 1 
  else if (b>= 1 && b<=5 ) then -1 
  else if is_even (a+b) then 1 else -1


  let win a b =
    if not (a >= 1 && a <= 5 && b >= 1 && b <= 5) then
      if a >= 1 && a <= 5 then 1  
      else if b >= 1 && b <= 5 then -1 
      else 0  
    else if is_even (a + b) then 1  
    else -1 