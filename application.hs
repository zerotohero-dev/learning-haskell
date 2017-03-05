($) :: (a -> b) -> a -> b
f $ x = f x

-- f a b c ==> (((f a) b) c)

sum (map sqrt [1..130])

sum $ map sqrt [1..130]

sqrt $ 3 + 4 + 9

sum (filter (> 10) (map (* 2) [2..10]))

sum $ filter (> 10) (map (* 2) [2..10])

sum $ (filter (> 10) $ map (* 2) [2..10])

sum $ filter (> 10) $ map (* 2) [2..10]

-- $ is right associative
-- functions are left associative
-- f $ g $ x ==== (f $ (g $ x))
-  f   a   b ==== (( f a ) b)

-- f.g x == f(g(x))

-- function composition
(.) :: (b -> c) -> (a -> b) -> (a -> c)
f . g = \x -> f(g x)

f . g . z x == f(g(z x))

-- . and $ have low precedence so
--
-- negate . abs 42
--
-- wiil evaluate to
--
-- negate . 42
--
-- which will fail because 42 is not a function.
--
-- (negate . abs) 42 will work though.
-- or
-- negate . abs $ 42

sum (replicate 5 (max 6.7 8.9))

(sum . replicate 5) max 6.7 8.9

sum . replicate 5 $ max 6.7 8.9

replicate 2 (product (map (*3) (zipWith max [1,2] [4,5])))

(replicate 2) . product . map (*3) $ zipWith max [1,2] [4,5]
replicate 2 . product . map (*3) $ zipWith max [1,2] [4,5]

oddSquareSum = sum . takeWhile (<100000) . filter odd $ map (^2) [1..]

-- A Haskell module is essentially a file that defines some functions types and type classes.





