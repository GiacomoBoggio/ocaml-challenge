let is_posfrac (a,b) =
  if b = 0 || a*b < 0 then false
  else true 

let is_posfrac (a, b) = b > 0 && a > 0

let compare_posfrac (a1, b1) (a2, b2) =
  if not (is_posfrac (a1, b1)) || not (is_posfrac (a2, b2)) then
    failwith "One of the fractions is not positive"
  else if a1 * b2 = a2 * b1 then 0
  else if a1 * b2 > a2 * b1 then 1
  else -1

let compare_frac (a1, b1) (a2, b2) =
  if b1 = 0 || b2 = 0 then failwith "Denominator cannot be zero"
  else if a1 * b2 = a2 * b1 then 0
  else if a1 * b2 > a2 * b1 then 1
  else -1