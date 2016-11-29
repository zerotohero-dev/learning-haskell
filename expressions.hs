-- Each well-formed expression in Haskell has a well-formed type.
-- Each well-formed expression has a value.
-- Names for functions and values begin with a lowercase letter, except for data constructors
-- which begin with an uppercase letter.

-- 3 + 4 is the same as (+) 3 4
-- div 15 3 is the same as 15 `div` 3

-- Functional applications associate to the left
-- a b c ==== (a b) c

-- You can declare new operators
(+++) :: Int -> Int -> Int
x +++ y = if even x then y else x + y

-- Section: One of the arguments of an operator is included with the operator:
-- (+1)
-- (2*)

-- lambda expression:
-- \n -> 2 * n + 1
-- map (\n -> 2 * n + 1) [1..5]

-- The type `Bool` has three values: `True`, `False`, and `undefined`.

-- take :: Int -> [a] -> [a]
-- a is a type variable. — Type variables begin with a lowercase letter.
-- Type variables can be instantiated to any type.