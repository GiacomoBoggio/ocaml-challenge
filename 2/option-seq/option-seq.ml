let ( <*> ) f o = match (f, o) with
|Some f,  Some x -> Some (f x)
|_ -> None

