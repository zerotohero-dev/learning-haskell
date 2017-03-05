-- Functors are things that can be mapped over.

-- fmap :: (a -> b) -> f a -> f b

instance Functor IO where
    fmap f action = do
        result <- action
        return (f result)

main = do
    line <- fmap reverse getLine
    putStrLn line


-- if fmap was just limited to IO:
-- fmap :: (a -> b) -> IO a -> IO b

main = do
    line <- fmap (intersperse '-' . reverse . map toUpper) getLine
    putStrLn line

instance Functor ((->) r) where
    fmap f g => (\x -> f (g x))

fmap :: (a -> b) -> f a -> f b
fmap :: (a -> b) -> ((->) r) a -> ((->) r) b
fmap :: (a -> b) -> (r -> a) -> (r -> b)

-- f: a->b
-- g: r->a
-- f (g x): r->b

instance Functor ((->) r) where
    fmap = (.)

fmap :: (Functor f) => (a -> b) -> f a -> f b

fmap :: (a -> b) -> (f a -> f b)

-- Prelude Control.Monad> :t fmap (*2)
-- fmap (*2) :: (Num b, Functor f) => f b -> f b
-- Prelude Control.Monad> :t fmap (replicate 3)
-- fmap (replicate 3) :: Functor f => f a -> f [a]
-- Prelude Control.Monad>

-- fmap is a function that takes a function and lifts that function so that it operates on functor values.

fmap (++) Just "Hey"

fmap (\f -> f "foo") $ (fmap (++) $ Just "Hello")

-- Applicative
class (Functor f) => Applicative f where
    pure :: a -> f a
    (<*>) :: f (a -> b) -> f a -> f b

-- fmap :: (a -> b) -> f a -> f b.

instance Applicative Maybe where
    pure = Just
    Nothing <*> _ = Nothing
    (Just f) <*> something = fmap f something

instance Applicative [] where
    pure x = [x]
    fs <*> xs = [f x | f <- fs, x <- xs]


instance Applicative IO where
    pure = return
    a <*> b = do
        f <- a
        x <- b
        return (f x)

instance Applicative ((->) r)
where
    pure x = (\_ -> x)
    f <*> g = \x -> f x (g x)


-- Applicative Laws
pure id <*> v = v
pure (.) <*> u <*> v <*> w = u <*> (v <*> w)
pure f <*> pure x = pure (f x)
u <*> pure y = pure ($ y) <*> u

liftA2 f a b = f <$> a <*> b