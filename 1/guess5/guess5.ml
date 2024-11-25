let guess5 x = 
  if x < 1 || x > 5 then 
    failwith "Invalid input: number must be between 1 and 5"
  else 
    let r = Random.int 5 + 1 in 
    if x = r then 
      (true, r)
    else 
      (false, r)