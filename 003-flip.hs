-- :: (a -> b -> c) -> b -> a -> c
-- :: (a -> b -> c) -> (b -> (a -> c))
flip1 :: (a -> b -> c) -> (b -> a -> c)
flip1 f = g where g x y = f y x

testFlip = flip1 (/) 10 2

flip2 :: (a -> b -> c) -> b -> a -> c
flip2 f y x = f x y

zipTest1 = zip [1,2,3,4,5] "hello"
zipTest2 = flip2 zip [1,2,3,4,5] "hello"
zipTest3 = zipWith div [2,2..] [10,8,6,4,2]
ZipTest4 = zipWith (flip2 div) [2,2..] [10,8,6,4,2]
