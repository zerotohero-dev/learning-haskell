applyTwice :: (a -> a) -> (a -> a)
applyTwice f x = f (f x)

addTwenty :: Integer -> Integer
addTwenty = applyTwice (+10)


zipWith1 :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith1 _ [] _ = []
zipWith1 _ _ [] = []
zipWith1 f (x:xs) (y:ys) = f x y : zipWith1 f xs ys

-- x:s:x:[]


zipTest :: Integer -> Integer -> Integer
zipTest a b = a + b

ar1 = [1,2,3]
ar2 = [6,8,9]

callZipWith :: [Integer]
callZipWith = zipWith1 zipTest ar1 ar2

callZipWithZipTest :: [Integer] -> [Integer] -> [Integer]
callZipWithZipTest = zipWith1 zipTest

callZipWith1_1 = zipWith1 (+) [4,2,5,6] [2,6,2,3]
callZipWith1_2 = zipWith1 max [6,3,2,1] [7,3,1,5]
callZipWith1_3 = zipWith1 (++) [" foo ", "bar ", "baz "] [" fighters", "hoppers", "aldrin"]
callZipWith1_4 = zipWith1 (*) (replicate 5 2) [1..]
callZipWith1_5 = zipWith1 (zipWith1 (*)) [[1,2,3],[4,5,6]] [[11,12,23],[14,15,16]]
