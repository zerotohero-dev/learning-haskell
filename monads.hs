-- Learning Haskell for the first time? Forget everything you know about programming.
-- It’s just like entering to a temple :: You need an “empty cup” to fill.

fmap :: (Functor f) => (a -> b) -> f a -> f b

-- Applicative type class

(<*>) :: (Applicative f) => f (a -> b) -> f a -> f b

-- pure
pure 1

(>>=) :: (Monad m) => m a -> (a -> m b) -> m b

-- Monads are just applicative functors that support bind (>>=).


\x -> Just (x+1)

applyMaybe :: Maybe a (a -> Maybe b) -> Maybe b
applyMaybe Nothing f = Nothing
applyMaybe (Just x) f = f x

class Monad m where
    return :: a -> m a -- pure

    (>>=) :: m a -> (a -> m b) -> m b

    (>>) :: m a -> m b -> m b
    x >> y = x >>= \_ -> y

    fail :: String -> m a
    fail msg = error msg

instance Monad Maybe where
    return x = Just x
    Nothing >>= f = Nothing
    Just x >>= f = f x
    fail _ = Nothing

-- do notation is not for IO; it can be used for any other Monad.

foo :: Maybe String
foo = Just 3 >>= (\x ->
      Just "!" >>= (\y ->
      Just (show x ++ y)))

-- do expressions are just a syntactic sugar for chaining monadic values.
foo :: Maybe String
foo = do
    x <- Just 3
    y <- Just "!"
    Just (show x ++ y)

instance Monad [] where
    return x = [x]
    xs >>= f = concat (map f xs)
    fail _ = []

-- list comprehensions are sytactic sugar for uisn lists as monads (do notations :: see <- in use?)

-- Monadic Laws
return x >>= f ==== f x

m >>= return ==== m

( m >>= f ) >>= g ==== m >>= ( \x -> f x >>= g )

(.) :: (b -> c) -> (a -> b) -> (a -> c)
f . g = (\x -> f (g x))

(<=<) :: (Monad m) => (b -> m c) -> (a -> m b) -> (a -> m c)
f <=< g = (\x -> g x >>= f)

f x = [-x, x]
g x = [3*x, 2*x]
h = f <=< g

h 3 -- 9, -9, -6, 6

( f <=< g ) <=< h === f <=< ( g  <=< h )
-- similar to >>=; for monads, the nesting of operations does not matter.

instance Monad ((->) r) where
    return x = \_ -> x
    h >>= f = \w -> f (h w) w

liftM :: (Monad m) => (a -> b) -> m a -> m b
fmap :: (Functor f) => (a -> b) -> f a -> f b

join :: (Monad m) => m (m a) -> m a

m >>= f ==== join fmap f m

filter :: (a -> Bool) -> [a] -> [a]
filterM :: (a -> m Bool) -> [a] -> m [a]