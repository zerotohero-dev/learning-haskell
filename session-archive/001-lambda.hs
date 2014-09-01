-- import System.Process
--
--clear :: IO ()
--clear = system "clear"

largestDivisible :: Integer
largestDivisible =
    head (filter p [100000,99999..]) where  p x = x `mod` 3829 == 0

chain :: Integer -> [Integer]
chain 1 = [1]
chain n
    | even n = n : chain (n `div` 2)
    | odd n = n : chain (n*3 + 1)

numLongChains :: Int 
numLongChains = length (filter (\xs -> length xs > 15) (map chain [1..100]))

test1 = map (+3) [1,6,3,2]
test2 = map (\x -> x + 3) [1,6,3,2]

zipWithLambda = zipWith (\a b -> (a * 30 + 3) / b) [5,4,3,2,1] [1,2,3,4,5]

tupleMap = map (\(a, b) -> a + b) [(1,2),(3,5),(6,3),(2,6),(2,5)]


