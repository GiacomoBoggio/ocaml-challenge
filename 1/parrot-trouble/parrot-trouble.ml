let parrot_trouble talking t = 
  if t < 0 || t > 23 then None
  else if (t < 7 || t > 20) && talking then Some true
  else None