class Eq a where
    (==), (/=) :: a -> a -> Bool
    x /= y = not (x == y)

instance Eq Bool where
    x == y if x then y else not y

instance Eq Person where
    x == y = (pin x == pin y)

class (Eq a) => Ord a where
    (<), (<=), (>=), (>) :: a -> a -> Bool
    x < y = not (x >= y)
    x <= y = x == y || x < y
    x >= y = x == y || x > y
    x > y = not (x <= y)

class Show a where
    show :: a -> String