double :: Integer -> Integer
double x = 2 * x

mapDouble :: [Integer] -> [Integer]
mapDouble = map double

mapDoubleDouble :: [Integer] -> [Integer]
mapDoubleDouble = map (double . double)

-- sum :: [Integer] -> Integer

-- sum . map double [x] = sum [2a, 2b, 2c, 2d]

-- sum . map double [x] ==== double . sum [x]
-- sum . map double ==== double . sum

-- sum [ sumx, sumy sumz] ==== sum( concat(x,y,z) )
-- sum . map sum ==== sum . concat

-- sum. sort === sum

-- [1] :: Num t => [t]
-- *Main> :type "lorem"

-- *Main> :type 'a'
-- 'a' :: Char