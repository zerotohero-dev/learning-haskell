zip2 :: [a] -> [b] -> [(a, b)]
zip2 _ [] = []
zip2 [] _ = []
zip2 (x:xs) (y:ys) = (x, y): zip2 xs ys
