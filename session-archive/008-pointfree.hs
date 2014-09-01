sum' :: (Num a) => [a] -> a 
sum' xs = foldl (+) 0 xs

sum2 :: (Num a) => [a] -> a 
sum2 = foldl (+) 0 

fn x = ceiling (negate (tan (cos (max 50 x))))

fn1 = celining . negate . tan . cos . max 50

oddSquareSum :: Integer 
oddSquareSum = sum (takeWhile (<10000) (filter odd (map (^2) [1..])))

-- this is like Hebrew... or Arabic.
-- An infinite list is squared, then odd ones are filtered, 
-- and <10K of them are taken, where we sum them up to get an Integer.
oddSquareSum2 = sum . takeWhile (<10000) . filter odd $ map (^2) [1..]
