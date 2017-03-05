-- Monoid is a type class.
-- It is for types whose values can be combined together with a binary operation.

 class Monoid m where
    mempty :: m
    mappend :: m -> m -> m
    mconcat :: [m] -> m
    mconcat = foldr mappend mempty

-- Only concrete types can be made monoids.
-- This is different from Functors and Applicatives which require their
-- parameters to be type constructors.

-- mempty is the identity value of the monoid. -- it is a polymorphic constant.
-- mappend is the binary function. (the “append” in the name is misleading).
-- mconcat takes a list of monoid values and reduces them into a single value.
-- (again calling this “concat” is fucking misleading).

-- Monoid laws
-- mempty `mappend` x = x :::: 1 * x = x
-- x `mappend` mepmty = x
-- (x `mappend` y) `mappend` z = x `mappend` (y `mappend` z)

instance Monoid [a] where
    mempty = []
    mappend = (++)

-- [a] : because Monoid requires a concrete type.

mconcat [[2],[3],[3,4,5]]

newtype Product a = Product { getProduct :: a }
    deriving (Eq, Ord, Read, Show, Bounded)

instance Num a => Monoid (Product a) where
    mempty = Product 1
    Product x `mappend` Product y = Product (x*y)

newtype Any = Any { getAny :: Bool }
    deriving (Eq, Ord, Read, Show, Bounded)

instance Monoid Any where
    mempty = Any False
    Any x `mappend` Any y = Any (x || y)

newtype All = All { getAll :: Bool }
    deriving (Eq, Ord, Read, Show, Bounded)

instance Monoid All where
    mempty = All True
    All x `mappend` All y = All (x && y)

instance Monoid Ordering where
    mempty = EQ
    LT `mappend` _ = LT
    EQ `mappend` y = y
    GT `mappend` _ = GT

instance Monoid a => Monoid (Maybe a) where
    mempty = Nothing
    Nothing `mappend` m = m
    m `mappend Nothing = m
    Just m1 `mappend` Just m2 = Just (m1 `mappend` m2)

newtype First a = First { getFirst :: Maybe a }
    deriving (Eq, Ord, Read, Show)

instance Monoid (First a) where
    mempty = First Nothing
    First (Just x) `mappend` _ First (Just x)
    First Nothing `mappend` x = x
