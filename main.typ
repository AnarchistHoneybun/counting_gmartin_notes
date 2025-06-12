#set document(
  title: "CTAEC Notes",
  author: "Nirv"
)

#set page(
  paper: "a4",
  margin: (x: 2cm, y: 2.5cm)
)

#set text(
  font: "New Computer Modern",
  size: 11pt
)

#set heading(numbering: (..nums) => {
  if nums.pos().len() == 1 {
    numbering("1.", ..nums)
  }
})

#show math.equation: set text(weight: 600)

// Title page
#align(center)[
  #text(size: 24pt, weight: "bold")[
    Notes, Solutions etc.
  ]
  
  #v(0.5cm)
  
  #text(size: 16pt)[
    for George E. Martin's "Counting - The Art of Enumerative Combinatorics"
  ]
  
  #v(0.5cm)
  
  #datetime.today().display()
]

#pagebreak()

// Table of contents
#outline(indent: auto)

#pagebreak()

// Include chapters
#include "chapters/01-elementary-enumeration.typ"

// Add more chapters as needed
// #include "chapters/02-next-chapter.typ"