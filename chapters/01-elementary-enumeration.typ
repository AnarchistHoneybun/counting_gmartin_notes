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

*1.* Addition principle: $6 + 8 = 14$ ways.

*2.* Same principle, although different fruits are indistinguishable in their own class: $1 + 1 = 2$ ways.

*3.* $3$ ways.

*4.* 2 B's, 2 G's, or 1 B and 1 G: $3$ ways.

*5.* 6 students total (3 boys + 3 girls) and we choose 2: $C(6,2) = 15$ ways.

*6.* $1$ way, since any orange we do not pick is indistinguishable from any other orange that we did not pick in a different scenario.

*7.* $C(6,5) = 6$ ways.

*8.* $C(6,1) = 6$ ways.

*9.* We need to pick exactly 5 fruits. Let's consider picking $i$ oranges and $(5-i)$ apples where $0 <= i <= 5$:

- 0 oranges, 5 apples
- 1 orange, 4 apples 
- 2 oranges, 3 apples
- 3 oranges, 2 apples
- 4 oranges, 1 apple 
- 5 oranges, 0 apples

Total: $6$ ways.

*10.* Counting the different ways to pick each fruit:

- For oranges: 0 to 9 (10 choices)
- For apples: 0 to 6 (7 choices)

Therefore the total choice combinations are $10 times 7 = 70$ ways. But we have to substract the one case where we pick 0 of both fruits, so we have $70 - 1 = 69$ ways.

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

*1.* Multiplication principle: We pick 1 Latin book from 5 and 1 Greek book from 7: $5 times 7 = 35$ ways.

*2.* Each letter can be any of the 26 letters: $26^2$ ways.

*3.* Since we can't repeat letters, we have 26 choices for the first letter and 25 for the second: $26 times 25 = 650$ ways.

*4.* $21 times 5 = 105$ ways.

*5.* $3 times 8 = 24$ ways.

*6.* $P(5,2) = 20$ ways. (We permute here since the arrangement matters)

*7.* $C(5,2) = 10$ ways.

*8.* $26^4$ ways.

*9.* Pick any row (5 choices) and any column (7 choices): $5 times 7 = 35$ ways.

*10.* $m times n$ ways.

*11.* Coin has 2 outcomes, die has 6 outcomes: $2 times 6 = 12$ ways.

*12.* $2 times 6 times 52 = 624$ ways.

*13.* $4!$ ways (since each ace is distinct).

*14.* $13!$ ways.

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