head' :: [a] -> a
head' xs = case xs of [] -> error "No head for empty lists!"
                      (x:_) -> x

describeList :: [a] -> String
describeList ls = "The list is " ++ case ls of []  -> "empty."
                                               [x] -> "a singleton list."
                                               xs  -> "a longer list."

describeList2 :: [a] -> String
describeList2 ls = "The list is " ++ what ls
    where what []  = "empty."
          what [x] = "a singleton list."
          what xs  = "a longer list."
