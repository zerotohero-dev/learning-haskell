removeNonUppercase :: [Char] -> [Char] 
removeNonUppercase st = [ c | c <- st, c ` elem ` [' A'..' Z']]

addThree :: Int -> Int -> Int -> Int 
addThree x y z = x + y + z

factorial :: Integer -> Integer
factorial n = product [1..n]

circumference :: Float -> Float 
circumference r = 2 * pi * r

testShow = show 3

testRead = read "3"

testConvert = read "True" || False

testConcat = read "[1,2,3,4]" ++ [3]

testTypecast = read "5" :: Int

testOtherTypecast = read "[ 1,2,3,4]" :: [Int]