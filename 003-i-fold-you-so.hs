sum' :: (Num a) => [a] -> a
sum' xs = foldl (\acc x -> acc + x) 0 xs
-- sum' = foldl (+) 0

map' :: (a -> b) -> [a] -> [b] 
map' f xs = foldr (\x acc -> f x : acc) [] xs

mapl :: (a -> b) -> [a] -> [b] 
mapl f xs = foldl (\acc x -> acc ++ [f x]) [] xs 

elem' :: (Eq a) => a -> [a] -> Bool 
elem' y ys = foldr (\x acc -> if x == y then True else acc) False ys



-- foldr f [2,3,4,5] 0
-- f 2 (f 3 (f 4 (f 5 0))) 

-- foldl f [2,3,4,5] 0
-- f (f (f (f 2 0) 3) 4) 5
