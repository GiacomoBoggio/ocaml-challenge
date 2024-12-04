let dice p =
    (* Assicuriamoci che il valore di p sia tra 0 e 100 *)
    if p < 0 || p > 100 then
      failwith "La probabilità deve essere tra 0 e 100"
    else
      let rand = Random.int 100 in
      if rand < p then 6
      else
        (* Se non è 6, distribuiamo uniformemente tra 1, 2, 3, 4, 5 *)
        let side = (rand - p) / 20 in  (* 100 - p è distribuito su 5 facce, quindi 100-p/5 per faccia *)
        side + 1
  
        