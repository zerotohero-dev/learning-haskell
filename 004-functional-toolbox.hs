-- TODO: Fix this sh for the next session!

map :: (a -> b) -> [a] -> [b]
map _ [] = []
map f (x:xs) = f x : map f xs

mapTest1 = map (+3) [1,5,3,1,6]
mapTest2 = map (++ "!") [" BIFF", "BANG", "POW"]
mapTest3 = map (replicate 3) [3.. 6]
mapTest4 = map (map (^2)) [[1,2],[3,4,5,6],[7,8]]
mapTest5 = map fst [(1,2),(3,5),(6,3),(2,6),(2,5)]

filter :: (a -> Bool) -> [a] -> [a]
filter _ [] = []
filter p (x:xs)
    | p x = x : filter p xs
    | otherwise = filter p xs

filterTest1 = filter (>3) [1,5,3,2,1,6,4,3,2,1]
filterTest2 = filter (==3) [1,2,3,4,5]
filterTest3 = filter even [1..10]

filterTest4 =
    let
        notNull x = not (null x)
    in
        filter notNull [[1,2,3],[],[3,4,5],[2,2],[],[],[]]

filterTest5 = filter (`elem` ['a'..'z']) "u LaUgH aT mE BeCaUsE I aM diFfeRent"
filterTest6 = filter (< 15) (filter even [1..20])

quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) =
    let
        smallerOrEqual = filter (<=x) xs
        larger = filter (>x) xs
    in
        quicksort smallerOrEqual ++ [x] ++ quicksort larger

largestDivisible :: Integer
largestDivisible =
    head (filter p [100000,99999..]) where  p x = x `mod` 3829 == 0
