import qualified Data.Map as Map

data LockerState = Taken | Free deriving (Show, Eq)

type Code = String

type LockerMap = Map.Map Int (LockerState, Code)

lockerLookup :: Int -> LockerMap -> Either String Code
lockerLookup lockerNumber map = case Map.lookup lockerNumber map of
    Nothing            -> Left $ "Locker " ++ show lockerNumber ++ " does not exist."
    Just (state, code) -> if state /= Taken
                              then Right code
                              else Left $ "Locker " ++ show lockerNumber ++ " is already taken."

data List a = Empty | Cons a (List a) deriving (Show, Read, Eq, Ord)

data List a = Empty | Const { listHead :: a, listTail :: List a } deriving (Show, Read, Eq, Ord)

-- Cons ==== :

infixr 5 :-:

data List a = Empty | a :-: (List a) deriving (Show, Read, Eq, Ord)

dta Tree a = EmptyTree | Node a (Tree a) (Tree a) deriving (Show)

singleton :: a -> Tree a
singleton x = Node x EmptyTree EmptyTree

treeInsert :: (Ord a) => a -> Tree a -> Tree a
treeInsert x EmptyTree = singleton x
treeInsert x (Node a left right)
    | x == a = Node x left right
    | x < a = Node a (treeInsert x left) right
    | x > a = Node a left (treeInsert x right)