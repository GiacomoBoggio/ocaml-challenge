let minmax3 a b c =
  let minimo x y = if x > y then y else x in
  let massimo x y = if x > y then x else y in
  (minimo (minimo a b ) c, massimo (massimo a b ) c)
