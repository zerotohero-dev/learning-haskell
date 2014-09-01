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

-- Polymorphic Data Types
data List t = E | C t (List t) deriving Show

lst1 :: List Int
lst1 = C 3 (C 5 (C 2 E))

lst2 :: List Char
lst2 = C 'x' (C 'y' (C 'z' E))

lst3 :: List Bool
lst3 = C True (C False E)

filterList :: (t -> Bool) -> List t -> List t
filterList _ E = E
filterList p (C x xs)
  | p x       = C x (filterList p xs)
  | otherwise = filterList p xs

filterListTest = print (filterList even myList)

mapList :: (a -> b) -> List a -> List b
mapList f (C x xs) = C (f x) (mapList f xs)
mapList f E        = E

myList = C 2 (C (-3) (C 5 E))

double :: Num a => a -> a
double x = 2 * x

mapListTest = print (mapList double myList)

-- Prelude: is a module with a bunch of standard definitions that gets implicitly imported into every Haskell program.
-- filter
-- map
-- the Data.List module contains many more list functions still.

-- Now, "Maybe" maybe makes more sense.
-- data Maybe a = Nothing | Just a
-- Also Data.Maybe module has utilities to work with the type "Maybe".

-- head tail init last (!!)

-- and Empty list as an input crashes head (i.e. `head` is a "partial" function)
-- if it could have worked for any input, then it would have been a "total" function.
-- Functions that are well defined(*) for all possible inputs are called "total" functions.
--
-- (*) does not recurse indefinetely, and does not crash.

-- It's better **NOT** to use partial functions, by replacing them with "total" functions.
-- This is a good programming practice, not only in Haskell, but also in other languages too.

doStuff1 :: [Int] -> Int
doStuff1 []  = 0
doStuff1 [_] = 0
doStuff1 xs  = head xs + head (tail xs)

doStuff2 :: [Int] -> Int
doStuff2 []        = 0
doStuff2 [_]       = 0
doStuff2 (x1:x2:_) = x1 + x2

safeHead :: [a] -> Maybe a
safeHead []    = Nothing
safeHead (x:_) = Just x

emptyStringList = ""

safeHeadTest = print (safeHead emptyStringList, safeHead ["hello"])

data NonEmptyList a = NEL a [a]

nelToList :: NonEmptyList a -> [a]
nelToList (NEL x xs) = x:xs

listToNEL :: [a] -> Maybe (NonEmptyList a)
listToNEL []     = Nothing
listToNEL (x:xs) = Just (NEL x xs)

headNEL :: NonEmptyList a -> a
headNEL (NEL x _) = x

tailNEL :: NonEmptyList a -> [a]
tailNEL (NEL _ xs) = xs