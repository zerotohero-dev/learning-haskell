elem2 :: (Eq a) => a -> [a] -> Bool
elem2 a [] = False
elem2 a (x:xs)
    | a == x = True
    | otherwise = a `elem2` xs
