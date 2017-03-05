bmiTell :: Double -> String
bmiTell bmi
    | bmi <= 18.5 = "Thin"
    | bmi <= 25.0 = "Normal"
    | bmi <= 30   = "Fat"
    | otherwise   = "Whale"

bmiTellWH :: Double -> Double -> String
bmiTellWH weight height
    | weight / height ^ 2 <= 18.5 = "Thin"
    | weight / height ^ 2 <= 25.0 = "Normal"
    | weight / height ^ 2 <= 30   = "Fat"
    | otherwise                   = "Whale"

max' :: (Ord a) => a -> a -> a
max' a b
    | a <= b    = b
    | otherwise = a

myCompare :: (Ord a) => a -> a -> Ordering
a `myCompare` b
    | a == b    = EQ
    | a <= b    = LT
    | otherwise = GT

bmiTellWHWhere :: Double -> Double -> String
bmiTellWHWhere weight height
    | bmi <= skinny = "Thin"
    | bmi <= normal = "Normal"
    | bmi <= fat    = "Fat"
    | otherwise     = "Whale"
    where bmi = weight / height ^ 2
          skinny = 18.5
          normal = 25.0
          fat    = 30.0

initials :: String -> String -> String
initials firstName lastName = [f] ++ ". " ++ [l] ++ "."
    where (f:_) = firstName
          (l:_) = lastName

calculateBmis :: [(Double, Double)] -> [Double]
calculateBmis xs = [bmi w h | (w, h) <- xs]
    where bmi weight height = weight / height ^ 2

cylinder :: Double -> Double -> Double
cylinder r h =
    let sideArea = 2 * pi * r * h
        topArea = pi * r ^ 2
    in sideArea + 2 * topArea