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

This gives us $binom(6+2-1,2) = binom(7,2) = 21$ ways (stars and bars approach).

*Possible Sums:*
If we only care about the sum of the dice, there are 11 possible sums: 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12.

== Pigeonhole Principle

The pigeonhole principle is a fundamental counting principle:

#block(
  fill: rgb("f8d7da"),
  inset: 12pt,
  radius: 4pt,
  width: 100%,
  stroke: 1pt + rgb("#ff7d8a")
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
  stroke: 1pt + rgb("#ff7d8a")
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
  stroke: 1pt + rgb("#ff7d8a")
)[
    If we have $n$ total objects consisting of $n_1$ identical objects of type 1, $n_2$ identical objects of type 2, ..., $n_k$ identical objects of type $k$, then the number of distinct arrangements is:

    $ frac(n!,n_1 ! times n_2 ! times ... times n_k !) $

    where $n_1 + n_2 + ... + n_k = n$.
]

*Reasoning:* Start with $n!$ total arrangements, as if all objects were distinct. However, since the $n_1$ objects of type 1 can be arranged among themselves in $n_1 !$ ways without creating new distinct arrangements, we divide by $n_1 !$. Apply the same logic for each type of identical object.

This formula naturally reduces to $n!$ when all objects are distinct (each $n_i = 1$) and to $1$ when all objects are identical ($n_1 = n$, all other $n_i = 0$).

== n Choose r by Way of MISSISSIPPI

1. All 6 letters are distinct, so we have $6! = 720$ ways.

2. All 6 letters are distinct (subscripts make them different), so we have $6! = 720$ ways.

3. 3 distinct A's, 2 identical E's, and 1 F. $frac(6!,2!) = 360$ ways.

4. We have 3 identical A's, 2 distinct E's (due to subscripts), and 1 J. The number of arrangements is $frac(6!,3!) = 120$ ways.

5. 3 identical A's, 2 identical E's, and 1 F. $frac(6!,3! times 2!) = 60$ ways.

6. 1 B, 3 A's, and 2 N's. $frac(6!,1! times 3! times 2!) = 60$ ways.

7. 3 A's, 2 B's, 4 C's, and 1 D. $frac(10!,3! times 2! times 4! times 1!) = 12600$ ways.

8. $frac(11!,2! times 2! times 2!)$ ways.

9. $frac(11!,1! times 4! times 4! times 2!)$ ways.

10. 4 A's, 3 G's, and 6 distinct letters (total 13 objects). The number of arrangements is $frac(13!,4! times 3!)$.

11. $frac(13!,4! times 3!)$ ways.

12. First arrange the 3 subjects: $3!$ ways. Then arrange books within each subject: $4! times 3! times 6!$ ways. Total arrangements: $3! times 4! times 3! times 6! = 622080$.

13. We need to arrange $n$ letters where $r$ are C's and $(n-r)$ are R's. The number of arrangements is $frac(n!,r!(n-r)!) = binom(n,r)$.

14. Selecting $r$ persons from $n$ persons is $binom(n,r) = frac(n!,r!(n-r)!)$.

15. Selecting $r$ distinguishable objects from $n$ distinguishable objects is $binom(n,r) = frac(n!,r!(n-r)!)$ (This is the same as the last question, even though the objects are distinguishable. This is because the order of selection does not matter).

== Circular Arrangements

When arranging objects in a circle, we must account for the fact that rotations of the same arrangement are considered identical:

#block(
  fill: rgb("f8d7da"),
  inset: 12pt,
  radius: 4pt,
  width: 100%,
  stroke: 1pt + rgb("#ff7d8a")
)[
    The number of ways to arrange $n$ distinct objects in a circle is $(n-1)!$.
]

*Reasoning:* Consider any linear arrangement of $n$ people. When we place them in a circle, this single arrangement can be rotated $n$ different ways around the circle, but all these rotations represent the same circular seating arrangement. Since there are $n!$ linear arrangements, and each circular arrangement corresponds to $n$ linear arrangements, we have $frac(n!,n) = (n-1)!$ distinct circular arrangements.

Equivalently, we can fix one person's position (to eliminate rotational symmetry) and arrange the remaining $(n-1)$ people in the remaining positions, giving us $(n-1)!$ arrangements.

== The Round Table

1. Using the circular arrangement formula: $(8-1)! = 7! = 5040$ ways.

2. $(12-1)! = 11!$ ways.

3. Treat each couple as a single unit. We have 8 units to arrange in a row: $8!$ ways. Within each couple, the 2 persons can be arranged in $2!$ ways. Total: $2^8 times 8!$ ways.

4. The couples can be arranged in $(8-1)! = 7!$ ways, and within each couple there are $2!$ arrangements. Total: $2^8 times 7!$ ways.

5. We have $4 + 7 + 10 = 21$ people total. Using the circular arrangement formula: $(21-1)! = 20!$ ways.

6. First, arrange the 8 R's in a circle: $(8-1)! = 7!$ ways. This creates 8 gaps between consecutive R's where we can place the C's. To ensure no 2 C's are adjacent, we must choose 4 of these 8 gaps for our C's: $binom(8,4)$ ways. Total: $7! times binom(8,4)$ ways.

== Homework

1. $binom(11,5)$ ways.

2. $binom(52,5)$ ways.

3. $binom(52,13)$ ways.

4. A full house requires three-of-a-kind and a pair:
   - Choose rank for three-of-a-kind: $13$ ways
   - Choose 3 cards from 4 of that rank: $binom(4,3)$ ways  
   - Choose different rank for pair: $12$ ways
   - Choose 2 cards from 4 of that rank: $binom(4,2)$ ways
   
   Total: $13 times binom(4,3) times 12 times binom(4,2)$ ways.

5. $2^10 - 1$ ways.

6. $frac(13!,4! times 4! times 4! times 1!)$ ways.

7. Total ways minus same-subject pairs:
   $binom(16,2) - binom(5,2) - binom(7,2) - binom(4,2)$ ways.

8. Total combinations excluding choosing none: $6 times 8 - 1 = 47$ ways.

9. Arrange 21 consonants first: $21!$ ways. This creates 22 gaps for the 5 vowels. Choose 5 gaps: $binom(22,5)$ ways. Arrange vowels in chosen positions: $5!$ ways.
   
   Total: $21! times binom(22,5) times 5!$ ways.

10. First letter has 26 choices, each subsequent letter has 25 choices (cannot repeat previous): $26 times 25^9$ ways.

11. Use complement: total 10-element subsets minus those with no consecutive letters. For no consecutive letters, we choose 10 positions from an effective alphabet of size $26 - 9 = 17$:
    
    $binom(26,10) - binom(17,10)$ ways.

12. $7! times binom(8,5) times 5!$ ways.

13. $(7-1)! times binom(7,5) times 5!$ ways.