maximum2 :: (Ord a) => [a] -> a
maximum2 [] = error "maximum of empty list!"
maximum2 [x] = x
maximum2 (x:xs) = max x (maximum2 xs)
