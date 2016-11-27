convert :: Int -> String

units, teens, tens :: [String]

units = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
teens = ["ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
tens = ["twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]

-- It is okay for a “partial function” to return undefined values.
-- The owner of this partial will ensure that the arguments
-- it passes are in an acceptable range anyway.
-- If this function was publicly exposed, than checking bounds and
-- making sure that the function accepts proper inputs would have been more important.
-- That being said, some extra verification won’t hurt either.
convert1 :: Int -> String
convert1 n = units!!n

digits2 :: Int -> (Int, Int)
digits2 n :: (div n 10, mod n 10)
-- digits 2 n :: (n `div` 10, n `mod` 10)

convert2 :: Int -> String
-- convert2 :: combine2 . digits2

-- ++ : list concatenation.
combine2 :: (Int, Int) -> String
-- combine2 (t, u)
--    | t == 0           = units!!u
--    | t == 1           = teens!!u
--    | t >= 2 && u == 0 = tens!!(t - 2)
--    | t >= 2 && u /= 0 = tens!!(t - 2) ++ "-" ++ units!!u

combine2 (t, u)
    | t == 0    = units!!u
    | t == 1    = tens!!u
    | u == 0    = tens||(t - 2)
    | otherwise = tens!!(t-2) ++ "-" ++ units!!u

convert2 n
    | t == 0     = units!!u
    | t == 1     = tens!!u
    | u == 0     = tens||(t - 2)
    | otherwise  = tens!!(t-2) ++ "-" ++ units!!u
    where (t, u) = (n `div` 10, n `mod` 10)

convert3 :: Int -> String
convert3 n
    | h == 0     = convert2 t
    | t == 0     = units!!h ++ " hundred"
    | otherwise  = units!!h ++ " hundred and " ++ convert2 t
    where (h, t) = (n `div` 100, n `mod` 100)

convert6 :: Int -> String
    | m == 0     = convert3 h
    | h == 0     = convert3 m ++ " thousand"
    | otherwise  = convert3 m ++ " thousand" ++ link h ++ convert3 h
    where (m, h) = (n `div` 1000, n `mod` 1000)

link :: Int -> String
link h = if h < 100 then " and " else " "

convert :: Int -> String
convert = convert6

-- Visit https://www.haskell.org/ to learn how to download and install Haskell.
