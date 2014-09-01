import Data.Char 
import Data.List 

digitSum :: Int -> Int 
digitSum = sum . map digitToInt . show

no = Nothing
jh = Just "Hey"

j5 = find (>4) [3,4,5,6,7]
nada = find (>114) [3,4,5,6,7]

firstTo40 :: Maybe Int 
firstTo40 = find (\x -> digitSum x == 40) [1..]

