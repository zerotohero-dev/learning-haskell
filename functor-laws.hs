-- # fmap id f ==== f

fmap id Just 3 ==== Just 3

fmap id Just 3 --> Just id 3
fmap id [42] --> [id 42]

-- # fmap :: (a -> b) -> f a -> f A


-- Second Law:

fmap (f . g) ==== fmap f . fmap g

fmap (f . g) x = fmap f (fmap g x)

fmap (f . g) Just x
fmap Just (f . g ) x

fmap f ((fmap g) Just x)
fmap f (Just g x)
Just (f .g x)

-- pure f <*> x ==== fmap f x

(<$>) :: (Functor f) => (a -> b) -> f a -> f b
    f <$> x = fmap f x

-- GHCi, version 8.0.1: http://www.haskell.org/ghc/  :? for help
-- Prelude> fmap (++) (Just "JohnTra") <*> Just "volta"
-- Just "JohnTravolta"
-- Prelude> (++) <$> Just "Johntra" <*> Just "volta"
-- Just "Johntravolta"
-- Prelude> (++) "Johntra" "Volta"
-- "JohntraVolta"