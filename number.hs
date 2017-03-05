lucky :: Int -> String
lucky 7 = "Seven"
lucky x = "Sorry, you are out of luck."

factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n - 1)

addVectors :: (Double, Double) -> (Double, Double) -> (Double, Double)
addVectors a b = (fst a + fst b, snd a + snd b)

addVectors2 :: (Double, Double) -> (Double, Double) -> (Double, Double)
addVectors2 (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

first :: (a, b, c) -> a
first (x, _, _) = x

second :: (a, b, c) -> b
second (_, y, _) = y

third :: (a, b, c) -> c
third (_, _, z) = z

xs = [(1,2), (3,4)]

sums = [a+b | (a,b) <- xs]

head' :: [a] -> a
head' [] = error "Can’t call head on an empty list."
head' (x:_) = x

tell :: (Show a) => [a] -> String
tell [] = "The list is empty"
tell (x:[]) = "The list has one element and it is '" ++ show x ++ "'."
tell (x:y:[]) = "The list has two elements and they are '" ++ show x ++ "' and '" ++ show y ++ "'."
tell (x:y:_) = "The list is too long. The first two elements and they are '" ++ show x ++ "' and '" ++ show y ++ "'."

firstLetter :: String -> String
firstLetter "" = "Empty string, whoops!"
firstLetter all@(x:xs) = "The first letter of " ++ all ++ " is " ++ [x] ++ "."