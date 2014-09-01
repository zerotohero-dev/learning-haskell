import Data.List

wordList = words "hey these are the words in this sentence"

groupStuff1 = group [1,1,1,1,2,2,2,2,3,3,2,2,2,5,6,7]
groupStuff2 = group ["boom","bip","bip","boom","boom"]
sortStuff3 = sort [5,4,3,7,2,1]
sortStuff4 = sort ["haskell", "totall", "kicks", "ass"]

wordNums :: String -> [(String, Int)] 
wordNums = map (\ws -> (head ws, length ws)) . group . sort . words

wordNums2 xs = map (\ws -> (head ws, length ws)) (group (sort (words xs)))

getTails = tails "party"

isStartWith = "Volka" `isPrefixOf` "Volkan Ozcelik"

checkAny1 = any (>4) [1,2,3,4,5]
checkAny2 = any (\x -> x > 5 && x < 10) [1,4,11]

isIn :: (Eq a) => [a] -> [a] -> Bool 
needle `isIn` haystack = any (needle `isPrefixOf`) (tails haystack)

isIn2 :: Eq a => [a] -> [a] -> Bool
isIn2 = isInfixOf

