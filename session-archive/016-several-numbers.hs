import qualified Data.Map as Map
import Data.Char

phoneBook = 
    [("betty", "555-2938"),
    ("betty", "342-2492") ,
    ("bonnie", "452-2928"),
    ("patsy", "493-2928"),
    ("patsy", "943-2929"),
    ("patsy", "827-9162"),
    ("lucille", "205-2928"),
    ("wendy", "939-8282"),
    ("penny", "853-2492"),
    ("penny", "555-2111")]

phoneBookToMap :: (Ord k) => [(k, String)] -> Map.Map k String 
phoneBookToMap xs = 
    Map.fromListWith add xs 
    where add number1 number2 = number1 ++ ", " ++ number2

findPatsy = Map.lookup "patsy" $ phoneBookToMap phoneBook


phoneBookToMap2 :: (Ord k) => [(k, a)] -> Map.Map k [a] 
phoneBookToMap2 xs = Map.fromListWith (++) $ map (\(k, v) -> (k, [v])) xs

findPatsy2 = Map.lookup "patsy" $ phoneBookToMap2 phoneBook

findBiggest = Map.fromListWith max [(2,3),(2,5),(2,100),(3,29),(3,22),(3,11),(4,22),(4,15)]

addTogether = Map.fromListWith (*) [(2,3),(2,5),(2,100),(3,29),(3,22),(3,11),(4,22),(4,15)]
