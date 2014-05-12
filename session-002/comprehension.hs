comprehend1 = take 10 [2,4..]

comprehend2 = [2*x | x <- [1..10]]

comprehendWithPredicate = [2*x | x <- [1..10], 2*x >= 20]

getRemainder = [x | x <- [50..100], x `mod` 7 == 3]

boomBangs xs = [ if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]

morePredicates = [ x | x <- [10.. 20], x /= 13, x /= 15, x /= 19]

drawFromSeveralLists = [x + y | x <- [1,2,3], y <- [10,100,1000]]

productThem = [ x* y | x <- [2,5,10], y <- [8,10,11], x*y > 50]


nouns = [" hobo"," frog"," pope"] 
adjectives = [" lazy"," grouchy"," scheming"] 

combine = [adjective ++ " " ++ noun | adjective <- adjectives, noun <- nouns]


length' xs = sum [1 | _ <- xs]

removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']]

-- [[1,2,3,4],[1,2,3,4,5,6],[1,2,3,4,5,6,6,7]]
nestedComprehend xxs = [ [ x | x <- xs, even x ] | xs <- xxs] 