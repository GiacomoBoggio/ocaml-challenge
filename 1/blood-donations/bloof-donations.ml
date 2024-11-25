type blood_group = A | B | AB | O

let check_groups b1 b2 = match (b1, b2) with
| O , _ -> true
| A , A -> true
| A, AB -> true
| B , B -> true
| B, AB -> true
| AB, AB -> true
| _ , _ -> false