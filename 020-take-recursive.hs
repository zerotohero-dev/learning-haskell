take2 :: (Num i, Ord i) => i -> [a] -> [a]
take2 n _
    | n <= 0 = []
take2 _ [] = []
take2 n (x:xs) = x : take2 (n-1) xs
