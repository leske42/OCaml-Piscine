type phosphate = string
type deoxyribose = string
type nucleobase = 
  | A
  | T
  | C
  | G
  | None
type nucleotide = (phosphate * deoxyribose * nucleobase)

let generate_nucleotide base = 
  let base_selector =
    match base with
    | 'A' -> A
    | 'T' -> T
    | 'C' -> C
    | 'G' -> G
    | _ -> None
  in (("phosphate" : phosphate), ("deoxyribose" : deoxyribose), base_selector)
