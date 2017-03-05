-- Foldable is for things that can be folded up.

import qualified Data.Foldable as F

F.foldr :: (F.Foldable t) => (a -> b -> b) -> b -> t a -> b

instance F.Foldable Tree where
    foldMap f EmptyTree = mempty
    foldMap f (Node x l r) = F.foldMap f l `mappend` f x `mappend` F.foldMap f r