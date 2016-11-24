commonWords :: Int -> [Char] -> [Char]

type Text = [Char]
type Word = [Char]

-- words :: [Char] -> [[Char]]

words :: Text -> [Word]

map :: (a -> b) -> [a] -> [b]

sortWords :: [Word] -> [Word]

countRuns :: [Word] -> [(Int, Word)]

sortRuns :: [(Int, Word)] -> [(Int, Word)]

take :: Int -> [a] -> [a]

showRun :: (Int, Word) -> String

toLower :: Char -> Char

map showRun :: [(Int, Word)] -> [String]
map toLower :: String -> String

concat :: [[a]] -> [a]

commonWords :: Int -> Text -> String

-- commonWords n :: String -> String

-- Technically speaking, Haskell functions take only one argument.

-- max :: (Ord a) => a -> a -> a
-- max :: (Ord a) => a -> (a -> a)

-- max 4 5
-- (max 4) 5

-- f . g x = f ( g x )
-- f g x = ( f g ) x



commonWords n = concat
    . map showRun
    . take n
    . sortRuns
    . countRuns
    . sortWords
    . words
    . map toLower
-- Thing make much sense when you read it from right to left:
--      given a String input `text`
--      convert the text to lowercase by mapping each character to a lowercase version of it
--          and returning the transformed array,
--      then make it an array of words,
--      then sort that array,
--      then create an array of tuples,
--      then sort those tuples
--      then take the first n from the top as an array
--      then convert those array of tuples to an array of strings
--      then concatenate the array into a joint string.
--
-- map toLower thePhrase --> words --> sort --> countRuns --> sort --> take n --> map showRun --> concat