type vote = StrongReject | WeakReject | WeakAccept | StrongAccept

let decide_exam vote1 vote2 vote3 =
  let is_acceptance v = v = WeakAccept || v = StrongAccept in
  let rejection v = v = StrongReject in
  
  (* Se c'è almeno un StrongReject, il candidato fallisce *)
  if rejection vote1 || rejection vote2 || rejection vote3 then
    false
  else
    (* Conta il numero di accettazioni e verifica se sono almeno 2 *)
    let accept_count = (if is_acceptance vote1 then 1 else 0) +
                       (if is_acceptance vote2 then 1 else 0) +
                       (if is_acceptance vote3 then 1 else 0) in
    accept_count >= 2  (* Il candidato passa se ci sono almeno 2 accettazioni *)
