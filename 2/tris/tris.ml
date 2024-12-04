let tris (a, b, c, d) =
  (a = b && a = c) ||
  (a = b && a = d) ||
  (a = c && a = d) ||
  (b = c && b = d) ||
  (a = b && c = d)

let hand () =
  let random_num () = Random.int 10 + 1 in
  (random_num (), random_num (), random_num (), random_num ())