= Elementary Enumeration

== Combination Formula

The number of ways to choose $r$ objects from $n$ distinct objects is given by:

#block(
  fill: rgb("f8d7da"),
  inset: 12pt,
  radius: 4pt,
  width: 100%,
  stroke: 1pt + rgb("#ff7d8a")
)[

    $ C(n,r) = binom(n,r) = frac(n!,(n-r)! r!) $
]

Also written as $""_n C_r$ or $binom(n,r)$.


== Quickies - I

*1.* Using the addition principle: $6 + 8 = 14$ ways.

*2.* Same logic as problem 1: $6 + 8 = 14$ ways.

*3.* We can pick any one of the three types of letters: A, B, or C. Therefore, $3$ ways.

*4.* We need to consider all possible combinations:
- 2 B's and 0 G's: $C(3,2) = 3$ ways
- 1 B and 1 G: $C(3,1) times C(3,1) = 3 times 3 = 9$ ways  
- 0 B's and 2 G's: $C(3,2) = 3$ ways

Total: $3 + 9 + 3 = 15$ ways.

*5.* We have 6 students total (3 boys + 3 girls) and need to pick 2: $C(6,2) = 15$ ways.

*6.* $C(6,5) = 6$ ways.

*7.* $C(6,5) = 6$ ways.

*8.* $C(6,1) = 6$ ways.

*9.* We need to pick exactly 5 fruits. Let's consider picking $i$ oranges and $(5-i)$ apples where $0 <= i <= 5$:

- 0 oranges, 5 apples: $C(7,0) times C(8,5) = 1 times 56 = 56$
- 1 orange, 4 apples: $C(7,1) times C(8,4) = 7 times 70 = 490$
- 2 oranges, 3 apples: $C(7,2) times C(8,3) = 21 times 56 = 1176$
- 3 oranges, 2 apples: $C(7,3) times C(8,2) = 35 times 28 = 980$
- 4 oranges, 1 apple: $C(7,4) times C(8,1) = 35 times 8 = 280$
- 5 oranges, 0 apples: $C(7,5) times C(8,0) = 21 times 1 = 21$

Total: $56 + 490 + 1176 + 980 + 280 + 21 = 3003$ ways.

*10.* Total ways to pick any subset from the fruits = $2^9 times 2^6 = 2^15 = 32768$ ways.

Ways to pick nothing = $1$ way.

Ways to pick at least 1 piece = $32768 - 1 = 32767$ ways.

== Permutation Formula

The number of ways to arrange $r$ objects from $n$ distinct objects (order matters) is given by:

#block(
  fill: rgb("f8d7da"),
  inset: 12pt,
  radius: 4pt,
  width: 100%,
  stroke: 1pt + rgb("#ff7d8a")
)[
    $ P(n,r) = frac(n!,(n-r)!) $
]

Also written as $""_n C_r$ or $A(n,r)$.

*Relationship between Permutation and Combination:*

Since permutations consider order while combinations do not, we have:
$ P(n,r) = r! times C(n,r) $

This is because for each combination of $r$ objects, there are $r!$ ways to arrange them.

== Quickies - II

*1.* Using the multiplication principle: We pick 1 Latin book from 5 and 1 Greek book from 7: $5 times 7 = 35$ ways.

*2.* Each position in the 2-letter word can be any of the 26 letters: $26 times 26 = 676$ ways.

*3.* First letter has 26 choices, second letter has 25 remaining choices (must be different): $26 times 25 = 650$ ways.

*4.* We have 21 consonants and 5 vowels. Consonant first, then vowel: $21 times 5 = 105$ ways.

*5.* Using the multiplication principle (similar to problem 1): $3 times 8 = 24$ ways.

*6.* This is an arrangement problem. We need to arrange 2 people in 5 chairs: $P(5,2) = frac(5!,3!) = 5 times 4 = 20$ ways.

*7.* This is a combination problem (order doesn't matter for chairs): $C(5,2) = 10$ ways.

*8.* Similar to problem 2: $26^4 = 456776$ ways.

*9.* We can pick any row (5 choices) and any column (7 choices): $5 times 7 = 35$ ways.

*10.* Similar to problem 9: $m times n$ ways.

*11.* Coin has 2 outcomes, die has 6 outcomes: $2 times 6 = 12$ ways.

*12.* Similar to problem 11, but with an additional card choice: $2 times 6 times 52 = 624$ ways.

*13.* We need to arrange 4 aces in a row: $4! = 24$ ways.

*14.* Similar to problem 13, but with 13 spades: $13!$ ways.

== A Discussion Question

*Question:* How many ways can a pair of dice fall?

Solution for this depends on how the question means, or how we interpret, "ways":

*Distinguishable Dice:*
If we can tell the dice apart (e.g., one red die and one blue die), then each die can show any of 6 faces independently. Using the multiplication principle: $6 times 6 = 36$ ways.

This counts (1,2) and (2,1) as different outcomes since the first number represents the red die and the second represents the blue die.

*Indistinguishable Dice (Unordered Pairs):*
If the dice are identical and we only care about which numbers appear, then we're counting unordered pairs. The possible outcomes are:
(1,1), (1,2), (1,3), (1,4), (1,5), (1,6),
(2,2), (2,3), (2,4), (2,5), (2,6),
(3,3), (3,4), (3,5), (3,6),
(4,4), (4,5), (4,6),
(5,5), (5,6),
(6,6)

This gives us $binom(6+2-1,2) = binom(7,2) = 21$ ways (stars and bars approach).

*Possible Sums:*
If we only care about the sum of the dice, there are 11 possible sums: 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12.

The "correct" answer depends entirely on what the question is really asking!