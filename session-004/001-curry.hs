-- :t max === (Ord a) = > a -> (a -> a)

maxWith10 :: Integer -> Integer
maxWith10 = max 10

mulThree :: Int -> (Int -> (Int -> Int))
mulThree x y z = x * y * z

callMulThree :: Integer
callMulThree = 3 * ( 4 * 5 )

mulThreeSix :: Int -> (Int -> Int)
mulThreeSix = mulThree 6

mulThreeSixFive :: Int -> Int
mulThreeSixFive = mulThreeSix 5

mulThreeSixFiveTen :: Int
mulThreeSixFiveTen = mulThreeSixFive 10

divideByTen :: Double -> Double
divideByTen = (/10)

invByTen = (10/)

isUpperAlphaNum :: Char -> Bool
isUpperAlphaNum = (`elem` ['A'..'Z'])

containsFour :: [Integer] -> Bool
containsFour  = (4 `elem`)
