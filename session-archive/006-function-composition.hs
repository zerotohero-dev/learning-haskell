import Data.List

-- (.) :: (b -> c) -> (a -> b) -> (a -> c) 
-- f . g = \x -> f (g x)

negation = negate . (*3)
makeNegative1 = map (\x -> negate (abs x))
makeNegative2 = map (negate . abs)

-- f (g (z x)) === f . g . z . x

map1 = map (\xs -> negate (sum (tail xs)))
map2 = map (negate . sum . tail)
map3 = map $ negate .sum . tail

expr1 = sum (replicate 5 (max 6.7 8.9))
expr2 = (sum . replicate 5) (max 6.7 8.9)
expr3 = sum . replicate 5 $ max 6.7 8.9

expr4 = replicate 2 (product (map (*3) (zipWith max [1,2] [4,5])))
expr5 = replicate 2 (product (map (*3) $ zipWith max [1,2] [4,5]))
expr6 = replicate 2 (product . map (*3) $ zipWith max [1,2] [4,5]) 
expr7 = replicate 2 . product . map (*3) $ zipWith max [1,2] [4,5]
