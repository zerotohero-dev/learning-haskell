anagrams :: Int -> [Word] -> String

getWords :: Int -> [Word] -> [Word]

addLabel :: Word -> (Label, Word)

type Label = [Char]

sortLabels :: [(Label, Word)] -> [(Label, Word)]

groupByLabel :: [(Label, Word)] -> [(Label, [Word])]

showEntry :: [(Label, [Word])] -> String

anagrams n = concat . map showEntry . groupByLabel . sortLabels . map addLabel . getWords n