maximum' :: (Ord a) => [a] -> a 
maximum' = foldl1 max

