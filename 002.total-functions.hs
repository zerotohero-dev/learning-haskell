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
