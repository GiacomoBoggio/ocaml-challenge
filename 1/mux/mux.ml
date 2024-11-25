let mux20 s0 a b = (s0 && a) || (not s0 && b)

let mux21 s0 a b = if s0 then a else b

let mux2 s0 a b =
  match s0 with
  | true -> a
  | false -> b

let mux4 s1 s0 a0 a1 a2 a3 =
  let m0 = mux2 s0 a0 a1 in
  let m1 = mux2 s0 a2 a3 in
  mux2 s1 m0 m1

let () =
  assert(mux4 false false false true false true = false);;
  assert(mux4 false true false true false true = true);;
  assert(mux4 true false false true false true = false);;
  assert(mux4 true true false true false true = true);;
  print_endline "All tests passed."
