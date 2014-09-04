data IntList =
        Empty |
        Cons Int IntList
    deriving Show

mapIntList :: (Int -> Int) -> IntList -> IntList
mapIntList _ Empty       = Empty
mapIntList f (Cons x xs) = Cons (f x) (mapIntList f xs)

addOne x = x + 1
square x = x * x

addOneToAll xs = mapIntList addOne xs

absAll xs = mapIntList abs xs

squareAll xs   = mapIntList square xs

mapTest = print (absAll myIntList)

keepOnlyEven :: IntList -> IntList
keepOnlyEven Empty = Empty
keepOnlyEven (Cons x xs)
    | even x    = Cons x (keepOnlyEven xs)
    | otherwise = keepOnlyEven xs

evenTest = print (keepOnlyEven myIntList)

filterIntList :: (Int -> Bool) -> IntList -> IntList
filterIntList _ Empty = Empty
filterIntList p (Cons x xs)
    | p x       = Cons x (filterIntList p xs)
    | otherwise = filterIntList p xs

myIntList = Cons 2 (Cons (-3) (Cons 5 Empty))

filterTest = print (filterIntList even myIntList)
