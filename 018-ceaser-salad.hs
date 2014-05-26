import Data.Char

ord1 = ord 'a'
chr1 = chr 97
map1 = map ord ['a','b','c']

encode :: Int -> String -> String 
encode offset msg = map (\c -> chr $ ord c + offset) msg

decode :: Int -> String -> String 
decode shift msg = encode (negate shift) msg
