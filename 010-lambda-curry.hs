addThree :: Int -> Int -> Int
addThree x y z = x + y + z

addThree' :: Int -> Int -> Int
addThree' = (\x -> (\y -> (\z -> x + y + z)))

flip' :: (a -> b -> c) -> b -> a -> c 
flip' f = \x y -> f y x
-- flip' f x y = f y x

flipTest = map (flip subtract 20) [1,2,3,4]
