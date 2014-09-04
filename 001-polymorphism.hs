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
