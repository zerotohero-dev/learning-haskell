import qualified Data.Map as Map
import Data.Char

findBetty = Map.lookup "betty" phoneBook

newBook = Map.insert "Grace" "800-333-3333" phoneBook

getSize = Map.size phoneBook

findGrace = Map.lookup "Grace" phoneBook

addGrace = Map.insert "Grace" "800-444-4444"

string2Digits :: String -> [Int]
string2Digits = map digitToInt . filter isDigit

intBook = Map.map string2Digits phoneBook
