replicate2 :: Int -> a -> [a]
replicate2 n x
    | n <= 0 = []
    | otherwise = x : replicate2 (n-1) x
