let consensus3 (f0, f1, f2) = 
  fun n -> (* La funzione restituita prende un valore di tipo 'a, cioè n *)
    let r0 = f0 n in 
    let r1 = f1 n in 
    let r2 = f2 n in 
    match r0, r1, r2 with
    | Some v0, Some v1, Some v2 when v0 = v1 || v0 = v2 || v1 = v2 -> Some v0 (* Se almeno due sono uguali *)
    | Some _, Some _, Some _ -> None (* Se nessuno è uguale tra di loro *)
    | _ -> None (* Se almeno una delle funzioni è None *)
