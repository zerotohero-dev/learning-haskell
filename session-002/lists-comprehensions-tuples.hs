--removeNonUpperCase :: [Char] -> [Char]
--removeNonUpperCase x =
--    [c | c <- x, c `elem` ['A'..'Z']]

{-# LANGUAGE ScopedTypeVariables #-}

f a = g a where
    g (x :: Int) = x

--main =
--   print(removeNonUpperCase "bazingaAA")
