-- Functor type is for things that can be mapped over.

class Functor f where
    fmap :: (a -> b) -> f a -> f b

-- map :: (a -> b) -> [a] -> [b]

instance Functor [] where
    fmap = map

-- Types that can act like a box can be functors.

instance Functor Maybe where
    fmap f (Just x) = Just (f x)
    fmap f Nothing = Nothing

-- fmap :: (a -> b) -> Maybe a -> Maybe b

instance Functor Tree where
    fmap f EmptyTree = EmptyTree
    fmap f (Node x left right) = Node (f x) (fmap f left) (fmap f right)

instance Functor (Either a) where
    fmap f (Right x) = Right (f x)
    fmap f (Left x) = Left (x)

-- Left a | Right b
-- (b -> c) -> Either a b -> Either a c
-- (b -> c) -> (Either a) b -> (Either a) c

-- f ==== (b -> c)
-- (b -> c) -> Either a b -> Either a c
--  ------     --------      --------
--
-- Either a b ==== Left a | Right b
-- Either a c ==== Left a | Right c
--
--- Right b ===> Right (f b)   (Right c is an Either a c)
--- Left a  ===> Left a        (Left a is an Either a c)