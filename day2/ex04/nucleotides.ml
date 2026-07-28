type phosphate = string
type deoxyribose = string
type nucleobase = 
  | A
  | T
  | C
  | G
  | None
type nucleotide = (phosphate * deoxyribose * nucleobase)

let base_selector base =
    match base with
    | 'A' -> A
    | 'T' -> T
    | 'C' -> C
    | 'G' -> G
    | _ -> None

let generate_nucleotide: char -> nucleotide = 
  function
  | base -> ("phosphate", "deoxyribose", base_selector base)
  
