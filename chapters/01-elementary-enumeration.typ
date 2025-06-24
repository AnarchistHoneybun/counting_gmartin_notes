= Elementary Enumeration

== Combination Formula

The number of ways to choose $r$ objects from $n$ distinct objects is given by:

#block(
  fill: rgb("f8d7da"),
  inset: 12pt,
  radius: 4pt,
  width: 100%,
  stroke: 1pt + rgb("#ff7d8a"),
)[

  $ C(n,r) = binom(n, r) = frac(n!, (n-r)! r!) $
]

Also written as $""_n C_r$ or $binom(n, r)$.


== Quickies - I

1. Addition principle: $6 + 8 = 14$ ways.

2. Same principle, although different fruits are indistinguishable in their own class: $1 + 1 = 2$ ways.

3. $3$ ways.

4. 2 B's, 2 G's, or 1 B and 1 G: $3$ ways.

5. 6 students total (3 boys + 3 girls) and we choose 2: $C(6,2) = 15$ ways.

6. $1$ way, since any orange we do not pick is indistinguishable from any other orange that we did not pick in a different scenario.

7. $C(6,5) = 6$ ways.

8. $C(6,1) = 6$ ways.

9. We need to pick exactly 5 fruits. Let's consider picking $i$ oranges and $(5-i)$ apples where $0 <= i <= 5$:

- 0 oranges, 5 apples
- 1 orange, 4 apples
- 2 oranges, 3 apples
- 3 oranges, 2 apples
- 4 oranges, 1 apple
- 5 oranges, 0 apples

Total: $6$ ways.

10. Counting the different ways to pick each fruit:

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
  stroke: 1pt + rgb("#ff7d8a"),
)[
  $ P(n,r) = frac(n!, (n-r)!) $
]

Also written as $""_n C_r$ or $A(n,r)$.

*Relationship between Permutation and Combination:*

Since permutations consider order while combinations do not, we have:
$ P(n,r) = r! times C(n,r) $

This is because for each combination of $r$ objects, there are $r!$ ways to arrange them.

== Quickies - II

1. Multiplication principle: We pick 1 Latin book from 5 and 1 Greek book from 7: $5 times 7 = 35$ ways.

2. Each letter can be any of the 26 letters: $26^2$ ways.

3. Since we can't repeat letters, we have 26 choices for the first letter and 25 for the second: $26 times 25 = 650$ ways.

4. $21 times 5 = 105$ ways.

5. $3 times 8 = 24$ ways.

6. $P(5,2) = 20$ ways. (We permute here since the arrangement matters)

7. $C(5,2) = 10$ ways.

8. $26^4$ ways.

9. Pick any row (5 choices) and any column (7 choices): $5 times 7 = 35$ ways.

10. $m times n$ ways.

11. Coin has 2 outcomes, die has 6 outcomes: $2 times 6 = 12$ ways.

12. $2 times 6 times 52 = 624$ ways.

13. $4!$ ways (since each ace is distinct).

14. $13!$ ways.

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

This gives us $binom(6+2-1, 2) = binom(7, 2) = 21$ ways (stars and bars approach).

*Possible Sums:*
If we only care about the sum of the dice, there are 11 possible sums: 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12.

== Pigeonhole Principle

The pigeonhole principle is a fundamental counting principle:

#block(
  fill: rgb("f8d7da"),
  inset: 12pt,
  radius: 4pt,
  width: 100%,
  stroke: 1pt + rgb("#ff7d8a"),
)[
  If $n$ objects are placed into $m$ containers where $n > m$, then at least one container must contain more than one object.

  This can be generalized to: if $n$ objects are placed into $m$ containers, then at least one container contains at least $ceil(n/m)$ objects.
]

== Pigeonhole Problems

1. First, draw a white sock. Then, draw a black sock. The next sock drawn will have to match one of these, thus giving us a pair. Therefore, we need *3* socks.

2. Same as last question, we have 4 different suits. We can draw one each from all of them, but the 5th drawn card will have to match one of the suits. Thus, we need *5* cards.

3. Given 365 possible birthdays, we can have two people for each birthdate ($365 times 2 = 730$), and one more person, who has to be born on one of these 365 days, resulting in 3 people having the same birthday.  Therefore, we need *731* people.

4. We have 4 colors: 12 red, 20 white, 7 blue, 8 green balls. To avoid having 10 balls of the same color, we can take at most 9 from each color that has at least 9 balls. We can take all 7 blue balls, all 8 green balls, 9 red balls, and 9 white balls, giving us $7 + 8 + 9 + 9 = 33$ balls. The 34th ball must be either red or white, giving us our 10th ball of that color. Therefore, we need *34* balls.

5. We can pick 1 person from each couple, gicing us $n$ people. The next person picked has to be the un-picked half of any couple, giving us $n+1$ people to ensure atleast one couple is picked.

6. Each person can have between 0 and 19 mutual friends (since there are 19 other people in the room). However, if one person has 0 mutual friends and another has 19 mutual friends, this creates a contradiction: if someone has 19 mutual friends, then everyone else is their friend, so no one can have 0 mutual friends. Therefore, there are only 19 possible values for the number of mutual friends. With 20 people and 19 possible values, by the pigeonhole principle, at least 2 people must have the same number of mutual friends. QED.

7. Consider any 5 lattice points. We can partition all lattice points into 4 classes based on the parity of their coordinates:
  - Class 1: (even, even)
  - Class 2: (even, odd)
  - Class 3: (odd, even)
  - Class 4: (odd, odd)

  Two points are in the same class if and only if their x-coordinates have the same parity and their y-coordinates have the same parity. Since we have 5 points and only 4 classes, by the pigeonhole principle, at least 2 of the 5 points must be in the same class.

  If two points $(x_1, y_1)$ and $(x_2, y_2)$ are in the same class, then their midpoint $((x_1 + x_2)/2, (y_1 + y_2)/2)$ has integer coordinates, since both $x_1 + x_2$ and $y_1 + y_2$ are even. This midpoint lies on the segment connecting the two points, so we have found a lattice point on one of our 10 segments. QED.

8. Label the 6 people as vertices of a complete graph $K_6$. Color each edge red if the corresponding people know each other, blue if they are strangers.

  Pick any vertex $v$. It has 5 edges connecting to other vertices. By the pigeonhole principle, at least $ceil(5/2) = 3$ edges have the same color.

  Without loss of generality, assume at least 3 edges from $v$ are red, connecting $v$ to vertices $a$, $b$, and $c$. Now consider the triangle formed by $a$, $b$, and $c$:
  - If any edge of this triangle is red, then we have a red triangle (3 mutual acquaintances)
  - If all edges of this triangle are blue, then we have a blue triangle (3 mutual strangers)

  In either case, we have found the required set of 3. QED.

== Ramsey Theory

Ramsey theory studies the conditions under which order must appear in large enough structures. The fundamental question is: how large must a structure be to guarantee that it contains a particular substructure?

#block(
  fill: rgb("f8d7da"),
  inset: 12pt,
  radius: 4pt,
  width: 100%,
  stroke: 1pt + rgb("#ff7d8a"),
)[
  *Ramsey Number $R(m,n)$:* The smallest number $N$ such that if we color the edges of the complete graph $K_N$ with two colors (red and blue), then either there exists a red clique of size $m$ or a blue clique of size $n$.
]

Problem 8 from the previous section demonstrates that $R(3,3) = 6$. This means that in any group of 6 people, we can always find either 3 mutual acquaintances or 3 mutual strangers, and 6 is the smallest number for which this is guaranteed.

== Arrangements with Repetition

When arranging objects where some are identical, we must account for the fact that swapping identical objects doesn't create a new arrangement:

#block(
  fill: rgb("f8d7da"),
  inset: 12pt,
  radius: 4pt,
  width: 100%,
  stroke: 1pt + rgb("#ff7d8a"),
)[
  If we have $n$ total objects consisting of $n_1$ identical objects of type 1, $n_2$ identical objects of type 2, ..., $n_k$ identical objects of type $k$, then the number of distinct arrangements is:

  $ frac(n!, n_1 ! times n_2 ! times ... times n_k !) $

  where $n_1 + n_2 + ... + n_k = n$.
]

*Reasoning:* Start with $n!$ total arrangements, as if all objects were distinct. However, since the $n_1$ objects of type 1 can be arranged among themselves in $n_1 !$ ways without creating new distinct arrangements, we divide by $n_1 !$. Apply the same logic for each type of identical object.

This formula naturally reduces to $n!$ when all objects are distinct (each $n_i = 1$) and to $1$ when all objects are identical ($n_1 = n$, all other $n_i = 0$).

== n Choose r by Way of MISSISSIPPI

1. All 6 letters are distinct, so we have $6! = 720$ ways.

2. All 6 letters are distinct (subscripts make them different), so we have $6! = 720$ ways.

3. 3 distinct A's, 2 identical E's, and 1 F. $frac(6!, 2!) = 360$ ways.

4. We have 3 identical A's, 2 distinct E's (due to subscripts), and 1 J. The number of arrangements is $frac(6!, 3!) = 120$ ways.

5. 3 identical A's, 2 identical E's, and 1 F. $frac(6!, 3! times 2!) = 60$ ways.

6. 1 B, 3 A's, and 2 N's. $frac(6!, 1! times 3! times 2!) = 60$ ways.

7. 3 A's, 2 B's, 4 C's, and 1 D. $frac(10!, 3! times 2! times 4! times 1!) = 12600$ ways.

8. $frac(11!, 2! times 2! times 2!)$ ways.

9. $frac(11!, 1! times 4! times 4! times 2!)$ ways.

10. 4 A's, 3 G's, and 6 distinct letters (total 13 objects). The number of arrangements is $frac(13!, 4! times 3!)$.

11. $frac(13!, 4! times 3!)$ ways.

12. First arrange the 3 subjects: $3!$ ways. Then arrange books within each subject: $4! times 3! times 6!$ ways. Total arrangements: $3! times 4! times 3! times 6! = 622080$.

13. We need to arrange $n$ letters where $r$ are C's and $(n-r)$ are R's. The number of arrangements is $frac(n!, r!(n-r)!) = binom(n, r)$.

14. Selecting $r$ persons from $n$ persons is $binom(n, r) = frac(n!, r!(n-r)!)$.

15. Selecting $r$ distinguishable objects from $n$ distinguishable objects is $binom(n, r) = frac(n!, r!(n-r)!)$ (This is the same as the last question, even though the objects are distinguishable. This is because the order of selection does not matter).

== Circular Arrangements

When arranging objects in a circle, we must account for the fact that rotations of the same arrangement are considered identical:

#block(
  fill: rgb("f8d7da"),
  inset: 12pt,
  radius: 4pt,
  width: 100%,
  stroke: 1pt + rgb("#ff7d8a"),
)[
  The number of ways to arrange $n$ distinct objects in a circle is $(n-1)!$.
]

*Reasoning:* Consider any linear arrangement of $n$ people. When we place them in a circle, this single arrangement can be rotated $n$ different ways around the circle, but all these rotations represent the same circular seating arrangement. Since there are $n!$ linear arrangements, and each circular arrangement corresponds to $n$ linear arrangements, we have $frac(n!, n) = (n-1)!$ distinct circular arrangements.

Equivalently, we can fix one person's position (to eliminate rotational symmetry) and arrange the remaining $(n-1)$ people in the remaining positions, giving us $(n-1)!$ arrangements.

== The Round Table

1. Using the circular arrangement formula: $(8-1)! = 7! = 5040$ ways.

2. $(12-1)! = 11!$ ways.

3. Treat each couple as a single unit. We have 8 units to arrange in a row: $8!$ ways. Within each couple, the 2 persons can be arranged in $2!$ ways. Total: $2^8 times 8!$ ways.

4. The couples can be arranged in $(8-1)! = 7!$ ways, and within each couple there are $2!$ arrangements. Total: $2^8 times 7!$ ways.

5. We have $4 + 7 + 10 = 21$ people total. Using the circular arrangement formula: $(21-1)! = 20!$ ways.

6. First, arrange the 8 R's in a circle: $(8-1)! = 7!$ ways. This creates 8 gaps between consecutive R's where we can place the C's. To ensure no 2 C's are adjacent, we must choose 4 of these 8 gaps for our C's: $binom(8, 4)$ ways. Total: $7! times binom(8, 4)$ ways.

== Homework

1. $binom(11, 5)$ ways.

2. $binom(52, 5)$ ways.

3. $binom(52, 13)$ ways.

4. A full house requires three-of-a-kind and a pair:
  - Choose rank for three-of-a-kind: $13$ ways
  - Choose 3 cards from 4 of that rank: $binom(4, 3)$ ways
  - Choose different rank for pair: $12$ ways
  - Choose 2 cards from 4 of that rank: $binom(4, 2)$ ways

  Total: $13 times binom(4, 3) times 12 times binom(4, 2)$ ways.

5. $2^10 - 1$ ways.

6. $frac(13!, 4! times 4! times 4! times 1!)$ ways.

7. Total ways minus same-subject pairs:
  $binom(16, 2) - binom(5, 2) - binom(7, 2) - binom(4, 2)$ ways.

8. Total combinations excluding choosing none: $6 times 8 - 1 = 47$ ways.

9. Arrange 21 consonants first: $21!$ ways. This creates 22 gaps for the 5 vowels. Choose 5 gaps: $binom(22, 5)$ ways. Arrange vowels in chosen positions: $5!$ ways.

  Total: $21! times binom(22, 5) times 5!$ ways.

10. First letter has 26 choices, each subsequent letter has 25 choices (cannot repeat previous): $26 times 25^9$ ways.

11. Use complement: total 10-element subsets minus those with no consecutive letters. For no consecutive letters, we choose 10 positions from an effective alphabet of size $26 - 9 = 17$:

  $binom(26, 10) - binom(17, 10)$ ways.

12. $7! times binom(8, 5) times 5!$ ways.

13. $(7-1)! times binom(7, 5) times 5!$ ways.

== Which of These Questions Can We Answer Now

1. *With repetition not allowed and order counting:* This is asking for permutations of $r$ objects from $n$ distinguishable objects. Answer: $P(n,r) = frac(n!, (n-r)!)$ ways.

2. *With repetition allowed and order counting:* Each of the $r$ positions can be filled with any of the $n$ objects independently. Answer: $n^r$ ways.

3. *With repetition not allowed and order not counting:* This is asking for combinations of $r$ objects from $n$ distinguishable objects. Answer: $C(n,r) = binom(n, r) = frac(n!, r!(n-r)!)$ ways.

4. *With repetition allowed and order not counting:* This is combinations with repetition, solved using the stars and bars method. We need to distribute $r$ identical items among $n$ distinct categories. Answer: $binom(n+r-1, r) = binom(n+r-1, n-1)$ ways.

== Combinations with Repetition

The number of ways to select $r$ objects from $n$ distinct types with repetition allowed is given by:

#block(
  fill: rgb("f8d7da"),
  inset: 12pt,
  radius: 4pt,
  width: 100%,
  stroke: 1pt + rgb("#ff7d8a"),
)[
  $ binom(n+r-1, r) = binom(n+r-1, n-1) $
]


*Reasoning:* This problem is equivalent to distributing $r$ identical objects among $n$ distinct categories. We can visualize this using the "stars and bars" method: imagine $r$ stars (representing our selections) and $(n-1)$ bars (dividing the stars into $n$ groups for each type). For example, selecting 5 items from types A, B, C might look like: ★★|★|★★, representing 2 A's, 1 B, and 2 C's.

We need to arrange $r$ stars and $(n-1)$ bars in a row, which gives us $(r + n - 1)$ total positions. We choose $r$ positions for the stars (or equivalently, $(n-1)$ positions for the bars), yielding $binom(n+r-1, r)$ arrangements.

Equivalently, we can think of this as finding the number of non-negative integer solutions to $x_1 + x_2 + ... + x_n = r$, where each $x_i$ represents how many times we select type $i$.

== Problems for Class

1. $binom(6+k-1, k)$ ways.

2. $binom(26+4-1, 4)$ ways.

3. Arrange 10 men first: $10!$ ways. This creates 11 gaps for the 7 women. Choose 7 gaps: $binom(11, 7)$ ways. Arrange women in chosen positions: $7!$ ways.

  Total: $10! times binom(11, 7) times 7!$ ways.

4. Fix one man to account for circular symmetry: $(10-1)!$ ways to arrange remaining men. This creates 10 gaps around the circle. Choose 7 gaps: $binom(10, 7)$ ways. Arrange women: $7!$ ways.

  Total: $9! times binom(10, 7) times 7!$ ways.

5. Letters: R-4, E-4, C-2, U-1, N-2, L-1, A-1, T-1, I-1, O-1 (8 vowels, 10 consonants).
  - Arrange consonants: $frac(10!, 4! times 2! times 2!)$ ways
  - This creates 11 gaps. Choose 8 for vowels: $binom(11, 8)$ ways
  - Arrange vowels in chosen positions: $frac(8!, 4!)$ ways

  Total: $frac(11!, 3! times 2! times 3! times 1! times 2!) times binom(12, 8) times frac(8!, 4!)$ ways.

6. Total arrangements divided by vowel arrangements, times 1 (alphabetical):
  $frac(19!, 3! times 4! times 2! times 1! times 3! times 1! times 1! times 2! times 1! times 1!) times frac(4!, 8!)$ ways.

7. Total words minus those containing BAD: $4^5 - 3 times 4^2$ ways.

8. Total arrangements minus adjacent arrangements: $8! - 7! times 2!$ ways.

9. Treat Peter and Paul as one unit. Arrange 7 units in circle: $6!$ ways. Arrange Peter and Paul within unit: $2!$ ways.

  Total: $6! times 2!$ ways.

10. Each nationality forms 2 pairs. Arrange $2n$ pairs: $(2n)!$ ways. Divide by $2^n$ since pairs within each nationality are indistinguishable. Assign 4 people to 4 positions per nationality: $(4!)^n$ ways.

  Total: $frac((2n)!, 2^n) times (4!)^n$ ways.

11. Choose toys sequentially for each child:
  $binom(20, 4) times binom(16, 4) times binom(12, 4) times binom(8, 4) times binom(4, 4) = frac(20!, (4!)^5)$ ways.

12. $frac(18!, 5! times 6! times 7!)$ ways.

13. Groups are indistinguishable, so divide by $3!$:
  $frac(18!, 6!^3 times 3!)$ ways.

14. Arrange 11 B's creates 12 gaps. Choose 7 gaps for R's: $1 times binom(12, 7) times 1$ ways.

15. MISSISSIPPI has M-1, I-4, S-4, P-2. Arrange non-I letters: $frac(7!, 1! times 4! times 2!)$ ways. This creates 8 gaps. Choose 4 for I's: $binom(8, 4)$ ways.

  Total: $frac(7!, 1! times 4! times 2!) times binom(8, 4)$ ways.

16. $binom(5+67-1, 5)$ ways.

17. Let Lucky get $L = l + 7$ balls, others get $A + E + F = 23$ with $A + E <= 20$:
  $sum_(s=0)^(20) (s+1)(24-s)$ ways.

18. Find solutions to $a + b + c = 18$ with $0 <= a <= 7, 0 <= b <= 8, 0 <= c <= 9$ using inclusion-exclusion:

  $binom(18+3-1, 3-1) - binom((18-8)+3-1, 3-1) - binom((18-9)+3-1, 3-1) - binom((18-10)+3-1, 3-1) + binom((18-8-9)+3-1, 3-1) + binom((18-8-10)+3-1, 3-1) = 28$ ways.

== Ten Problems for Homework

1. $binom(26+4-1, 4) = binom(29, 4)$ ways.

2. $binom(26, 4)$ ways.

3. Choose 2 ranks for pairs: $binom(13, 2)$ ways. Choose 2 cards from each rank: $binom(4, 2)^2$ ways. Choose 1 rank from remaining 11: $binom(11, 1)$ ways. Choose 1 card from that rank: $binom(4, 1)$ ways.

  Total: $binom(13, 2) times binom(4, 2)^2 times binom(11, 1) times binom(4, 1)$ ways.

4. Choose vowel for middle position: $5$ ways. Choose first letter from remaining 25: $25$ ways. Choose third letter from remaining 24: $24$ ways.

  Total: $5 times 25 times 24$ ways.

5. Use complement: Total arrangements minus no adjacent I's.
  Total: $frac(11!, 1! times 4! times 4! times 2!)$ ways.
  No adjacent I's: Arrange M,S,S,S,S,P,P first in $frac(7!, 4! times 2!)$ ways, place 4 I's in 8 gaps: $binom(8, 4)$ ways.

  Answer: $frac(11!, 1! times 4! times 4! times 2!) - frac(7!, 4! times 2!) times binom(8, 4)$ ways.

6. $binom(12+2-1, 2)$ ways.

7. Since groups of same size are indistinguishable: $frac(18!, 5! times 5! times 4! times 4! times 2! times 2!)$ ways.

8. Arrange objects into groups then account for indistinguishable piles: $frac((m n)!, (n!)^m times m!)$ ways.

9. Choose 0-5 oranges and 0-7 apples: $(5+1)(7+1)$ ways.

10. Sum arrangements for all valid selections of A's and B's (at least 1 letter):
  $sum_(i=0)^3 sum_(j=0)^3 frac((i+j)!, i! times j!) - 1$ ways.

== Five Problems for Homework

1. Case 1 (P's together): Arrange M,I,I,I,I,PP in $frac(6!, 4!)$ ways, then place 4 S's using stars and    bars: $binom((7-2)+4-1, 4)$ ways.

  Case 2 (P's separate): Arrange M,I,I,I,I in $frac(5!, 4!)$ ways, place P's in $binom(6, 2)$ ways, then place S's: $binom((8-4)+4-1, 4)$ ways.

  Total: $frac(6!, 4!) times binom(9, 4) + frac(5!, 4!) times binom(6, 2) times binom(7, 4)$ ways.

2. $binom(6+32-1, 32)$ ways.

3. Substitute $y_i = x_i - 1$ to get $y_1 + y_2 + y_3 + y_4 + y_5 + y_6 = 26$ with $y_i >= 0$:

  $binom(6+26-1, 26)$ ways.

4. Consider $x_1 + x_2 + x_3 + x_4 + x_5 + x_6 + x_7 = 32$ with $x_7 >= 1$. Substitute $y_i = x_i - 1$ for all variables to get $y_1 + y_2 + y_3 + y_4 + y_5 + y_6 + y_7 = 25$ with $y_i >= 0$:

  $binom(7+25-1, 25)$ ways.

5. Consider $x_1 + x_2 + x_3 + x_4 + x_5 + x_6 + x_7 = 32$ with $x_7 >= 1$. Substitute $y_7 = x_7 - 1$ to get $x_1 + x_2 + x_3 + x_4 + x_5 + x_6 + y_7 = 31$ with all variables nonnegative:

  $binom(7+31-1, 31)$ ways.

== Ice Cream Cones - The Double Dip

1. Total flavour combos available for one icecream are $12 times 12$. After that it's simply a matter of
  choosing with repetition amongst these:

  $binom(12 times 12 + 5 - 1, 5)$ ways.
2. $binom(12 times 12, 5)$ ways.
3. We must find out the number of total possible scoop combinations, given that the order does
  not matter. Then, we choose 5 of these combos:

  $binom(binom(12+2-1, 2), 5)$ ways.
4. Similar to above, and the first part of the calculation follows exactly. We simply choose with
  repetition allowed once we have the flavour combos:

  $binom(binom(12+2-1, 2)+5-1, 5)$ ways.

== Block Walking

1. $frac(16!, 10! times 6!)$ ways
2. $frac(16!, 10! times 6!)$ paths
3. $frac(16!, 3! times 6! times 7!)$ words
4. $frac(16!, 3! times 6! times 7!)$ paths
5. $frac((x+y)!, x! times y!)$ words
6. $frac((x+y)!, x! times y!)$ paths
7. $frac((x+y+z)!, x! times y! times z!)$ words
8. $frac((x+y+z)!, x! times y! times z!)$ paths
9. We have 11 vertical and 7 horizontal lines. To construct a rectangle, two of them
  can be chosen from each oritentation: $binom(11, 2) times binom(7, 2)$
10. $sum_(k=1)^6 (10-k+1) times (6-k+1)$ squares

== Quickies - III

1. $binom(16, 5)$
2. $frac(7!, 3! times 4!)$
3. $frac(7!, 3! times 4!) times binom(8, 5) times 1$
4. $10!$
5. $9!$
6. $binom(7+2-1, 2)$
7. $14! times binom(15, 9) times 9!$
8. $binom(4+10-1, 10)$
9. Adjust for the restriction by giving 1 can each to everyone. Now we need to distribute 18 cans
  to 4 people, no lower bound: $binom(4+18-1, 18)$
10. $binom(57+9-1, 9) - binom(57, 1)$ ways (inclusion-exclusion, but we only have to check for one can
  variety violating the constraint since more than one of them violating the constraint would mean we
  picked more than 9 cans)
11. $binom(6+5-1, 5) times binom(6+8-1, 8)$
12. $6 times 9 -1$
13. $binom(9, 5) times 9^4$
14. $frac(26!, (26-5)!)$
15. $8!$
16. $binom(4+24-1, 24)$
17. $13$
18. $7$
19. $binom(3+25-1, 25) - 3 times binom(3+(25-13)-1, (25-13))$
20. $binom(7+(12-7)-1, (12-7))$
21. $50!/(10!)^5$
22. $binom(12+5-1, 5)$
23. $binom(6+9-1, 9)$
24. $11!$
25. $vec(6, 7, delim: angle.l)$

== The Knights' Quest

When choosing $q$ knights from $k$ such that there are at least $g$ unchosen
knights between any two chosen knights (where the knights are seated in a circle), the number
of valid selections is:

#block(
  fill: rgb("f8d7da"),
  inset: 12pt,
  radius: 4pt,
  width: 100%,
  stroke: 1pt + rgb("#ff7d8a"),
)[
  $ frac(k, q) times vec(q, k-(2g+1)-(q-1)-g times (q-2), delim: angle.l) $
]

== The Binomial Theorem

The binomial theorem provides the expansion of $(a + b)^n$:

#block(
  fill: rgb("e2e3f3"),
  inset: 12pt,
  radius: 4pt,
  width: 100%,
  stroke: 1pt + rgb("#6c63ff"),
)[
  $ (a + b)^n = sum_(r=0)^(n) binom(n, r) a^r b^(n - r) $
]

This identity expresses a power of a binomial as a sum of terms involving binomial coefficients and powers of $a$ and $b$.

=== Block Walking Identity

The following identity connects squared binomial coefficients to a single binomial coefficient from a higher row:

#block(
  fill: rgb("fef6d7"),
  inset: 12pt,
  radius: 4pt,
  width: 100%,
  stroke: 1pt + rgb("#ffc107"),
)[
  $ sum_(k=0)^(n) binom(n, k)^2 = binom(2n, n) $
]

*Block walking proof:* Imagine paths on a grid from $(0, 0)$ to $(n, n)$, where each move
is either right $(1, 0)$ or up $(0, 1)$. Each such path consists of $n$ right moves and
$n$ up moves — a total of $2n$ steps. The total number of such paths is: $binom(2n, n)$

Now consider the diagonal line $X + Y = n$. Every valid path must pass through exactly
one point on this line. Why?

- At the start: $X + Y = 0$
- At the end: $X + Y = 2n$
- Each move increases $X + Y$ by 1
- So after $n$ steps, you must be at some point $(i, n - i)$ where $X + Y = n$

Thus, each path passes through exactly one such midpoint.

We now count how many paths pass through each point $(i, n - i)$:
- From $(0, 0)$ to $(i, n - i)$: $binom(n, i)$
- From $(i, n - i)$ to $(n, n)$: $binom(n, i)$

So the number of full paths through $(i, n - i)$ is $binom(n, i)^2$. Summing over all
such points gives:

#block(
  fill: rgb("f8d7da"),
  inset: 12pt,
  radius: 4pt,
  width: 100%,
  stroke: 1pt + rgb("ff7d8a"),
)[
  $ sum_(i=0)^(n) binom(n, i)^2 = binom(2n, n) $
]

$qed$

== Homework for a Week

1. $24! times vec(25, 17, delim: angle.l)$
2. $24! times binom(23, 17)$
3. $binom(n, m) times vec((n-m), [r-(n-m)], delim: angle.l)$
4. $sum_(k=0)^10 vec(6, 20-2k, delim: angle.l)$
5. $sum_(k=0)^(10) binom(20, k) times binom(2k, k) times 6^(20-2k)$
6. $frac(6!, 2! times 2! times 1! times 1!) times [underbrace(binom(2, 2), I's) times underbrace(binom(7-2, 1), "O") +
    underbrace(binom(2, 1), "I") times underbrace(binom(7-2, 1), "second I") times underbrace(binom(8-3, 1), "O")]$
7. $vec(10, 62, delim: angle.l) times 10^8$
8. $9 times 10 times 11 - 1$
9. $frac(7!, 4! times 1! times 1! times 1!) times frac(7!, 4! times 2! times 1!)$
10. $1 times vec(3, 3, delim: angle.l) times
  vec(7, 3, delim: angle.l) times binom(11, 1)$
11. $1 times vec(7, 5, delim: angle.l) times binom(5, 1)$
12. $binom((5+7+11+14)!, 5! times 7! times 14!)$
13. $7! times binom(8, 5) times 13!$
14. $vec(2, 95, delim: angle.l) + vec(2, 70, delim: angle.l) + vec(2, 45, delim: angle.l) +
  vec(2, 20, delim: angle.l)$
15. $binom(5, 3) times [vec(2, 38-12 times 3, delim: angle.l) + vec(2, 38-11 times 32, delim: angle.l)
    + vec(2, 38-10 times 3, delim: angle.l) + (vec(2, 38-9 times 3, delim: angle.l) - 6) +
    (vec(2, 38-8 times 3, delim: angle.l) - 14)]$
16. assume $n$ balls and $N$ boxes: $binom(N, 2) times [binom(N-2, 1) times
    binom(n, 3) times (n-3)! + binom(N-2, 2) times binom(n, 4) times binom(4, 2) times (n-4)!]$
17. $sum_(k=0)^4 vec(2, k, delim: angle.l) times vec(4, 8-k, delim: angle.l)$
18. $sum_(k=0)^4 binom(8, k) times 2^k times 4^(8-k)$

== Four Questions for Thought