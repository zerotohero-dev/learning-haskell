import Control.Monad

main = do
    input <- getLine
    when (input == "bello") $ do
        putStrLn input

-- same as
main = do
    input <- getLine
    if (input == "bello")
        then putStrLn input
        else return ()

main = do
    a <- getLine
    b <- getLine
    c <- getLine
    print [a, b, c]

main = do
    rs <- sequence(getLine, getLine, getLine)
    print rs

main = do
    mapM print [1,2,3]
    mapM_ print [1,2,3]

main = forever $ do
    l <- getLine
    putStrLn $ map toUpper l

main do
    colors <- forM [1,2,3,4] (\a -> do
        putStrLn $ "color for " ++ show a ++ " ?"
        color <- getLine
        return color)
    mapM putStrLn colors

-- # Prelude> :t sequence
-- # m ==== IO for ghci.
-- # sequence :: (Traversable t, Monad m) => t (m a) -> m (t a) # converts traversable monads to a monad of traversable
-- # t: list (m a):print action --- t (m a): list of print actions --- m (t a) : io of list of print actions
--- # t list m:io a:string -> list of print strings
-- # io

-- # Prelude> :t mapM
-- # mapM :: (Traversable t, Monad m) => (a -> m b) -> t a -> m (t b)
-- # Prelude> :t mapM_
-- # mapM_ :: (Foldable t, Monad m) => (a -> m b) -> t a -> m ()

-- # sequence $ map  print ["a"]
-- #            t    {  (m a)  }

-- #   [print "a", print "b"] -- t (m a)
-- #    IO : Print  IO : Print -- IO of array of prints

-- # converts array of IO::prints to an IO of array of prints
-- # kind of shovels the array into the IO.

-- # return 42 :: (Num a, Monad m) => m a
-- # sequence :: (Traversable t, Monad m) => t (m a) -> m (t a)
-- #  list of string monads to monad of list of strings

-- # forM :: (Traversable t, Monad m) => t a -> (a -> m b) -> m (t b)
-- # takes a list of ints, and a function that takes an int and returns an IO of string;
-- # and then returns and IO of list of strings
-- #
-- # Take a list of int, a lambda function that takes an in and returns an IO action that yields a string
-- # then return an IO action that yields a list of strings
-- # t ==== list
-- # a ==== int
-- # m ==== IO action
-- # b ==== string