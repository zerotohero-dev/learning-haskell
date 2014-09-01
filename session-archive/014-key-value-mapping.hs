phoneBook = [
    ("betty", "555-2938"),
    ("bonnie", "452-2928"),
    ("patsy", "493-2928"),
    ("lucille", "205-2928")]


findKey :: (Eq k) => k -> [(k, v)] -> v 
--findKey key xs = snd ( head  ( filter (\(k, v) -> key == k)  xs ))
--findKey key xs = snd $ head  $ filter (\(k, v) -> key == k) xs 
--findKey key xs = (snd . head . filter (\(k, v) -> key == k)) $ xs 
findKey key xs = snd . head . filter (\(k, v) -> key == k) $ xs 


findKey1 :: (Eq k) => k -> [(k, v)] -> Maybe v 
findKey1 key [] = Nothing 
findKey1 key ((k, v):xs) 
    | key == k = Just v 
    | otherwise = findKey1 key xs


findKey2 :: (Eq k) => k -> [(k, v)] -> Maybe v 
findKey2 key xs = foldr (\(k, v) acc -> if key == k then Just v else acc) Nothing xs



-- f $ x = f x

a x = 2 * x

b y = y + 3

c z = z * 3

--  a . b . c  3
--  a ( b ( c 3 ) )

-- (a . b . c) 3
-- a . b . c $ 3

-- a b $ c == (a b) $ c

-- filter ((\ (k, v) -> key == k) xs)
-- f a b c
-- ( ( f a ) b ) c --> left associative

-- head filter os xs
-- ((head filter) os ) xs)

-- head filter os $ xs
-- (head filter) (os xs)
