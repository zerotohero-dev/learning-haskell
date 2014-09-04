y :: Int
y = y + 1

-- Machine-sized integers
i :: Int
i = -78

printBounds = (minBound :: Int, maxBound :: Int)

-- Arbitrary-precision integers
n :: Integer
n = 1234567890987654321987340982334987349872349874534

reallyBig :: Integer
reallyBig = 2^(2^(2^(2^2)))

numDigits :: Int
numDigits = length (show reallyBig)

-- Float is single precision, Double is double precision.
d1, d2 :: Double
d1 = 4.5387
d2 = 6.2831e-4

-- Booleans
b1, b2 :: Bool
b1 = True
b2 = False

-- Unicode characters
c1, c2, c3 :: Char
c1 = 'x'
c2 = 'Ø'
c3 = 'ダ'

-- Strings are lists of characters with special syntax
s :: String
s = "Hello, Haskell!"

ex01 = 3 + 2
ex02 = 19 - 27
ex03 = 2.35 * 8.6
ex04 = 8.7 / 3.1
ex05 = mod 19 3
ex06 = 19 `mod` 3
ex07 = 7 ^ 222

-- negative numbers need to be wraped to avoid - parsed as subtraction.
ex08 = (-3) * (-7)

-- Lightbulb: `=` is decleration, not assignment.
i2 = 30 :: Int

--     No instance for (Fractional Int) arising from a use of ‘/’
--       In the expression: i2 / i2
--       In an equation for ‘divError’: divError = i2 / i2
--
-- divError = i2 / i2

-- i3 = 30 :: Int
-- divError2 = print (i / i)

i3 = 30 :: Int
divTest2 = print (i3 `div` i3, 12 `div` 5)

ex11 = True && False
ex12 = not (False || True)

ex13 = ('a' == 'a')
ex14 = (16 /= 3)
ex15 = (5 > 3) && ('p' <= 'q')
ex16 = "Haskell" > "C++"

-- Compute the sum if the integers from 1 to n.
sumtorial :: Integer -> Integer
sumtorial 0 = 0
sumtorial n = n + sumtorial (n - 1)
-- Each clause is checked in order from top to bottom, and the first matching clause is chose.

sumtest = print (sumtorial 10)

-- Guards.
hailstone :: Integer -> Integer
hailstone n
    | n `mod` 2 == 0 = n `div` 2
    | otherwise      = 3 * n + 1

hailstoneTest = print (hailstone 3)

foo :: Integer -> Integer
foo 0 = 16
foo 1
    | "Haskell" > "C++" = 3
    | otherwise         = 4
foo n
    | n < 0           = 0
    | n `mod` 17 == 2 = -43
    | otherwise       = n + 3

fooTest = print [foo (-3), foo 0, foo 1, foo 36, foo 38]

isEven :: Integer -> Bool
isEven n
    | n `mod` 2 == 0 = True
    | otherwise      = False

evenTest = print [isEven 2, isEven 5]

betterIsEven :: Integer -> Bool
betterIsEven n = n `mod` 2 == 0

-- Pairs
p :: (Int, Char)
p = (3, 'x')

sumPair :: (Int, Int) -> Int
sumPair (x,y) = x + y

sumPairTest = print (sumPair (3,4))

f x y z = x + y + z

functionTest = print (f 3 17 8)

-- LightBulb!: -- these are "singly-linked lists" not Arrays!
listTest = [2,3,4] == 2 : 3 : 4 : []


hailstoneSeq :: Integer -> [Integer]
hailstoneSeq 1 = [1]
hailstoneSeq n = n : hailstoneSeq (hailstone n)

hailstoneSeqTest = print (hailstoneSeq 15)

-- Compute the length of a list of Integers
intListLength :: [Integer] -> Integer
intListLength [] = 0
intListLength (_:xs) = 1 + intListLength xs

intListLengthTest = print (intListLength [1,2,3,4,5])

sumEveryTwo :: [Integer] -> [Integer]
sumEveryTwo []         = [] -- Do nothing to the empty list
sumEveryTwo (x:[])     = [] -- Do nothing to lists with a single element
sumEveryTwo (x:(y:zs)) = (x + y) : sumEveryTwo zs

sumTwoTest = print (sumEveryTwo [1,2,3,4,5,6,7,8])

-- The number of hailstone steps needed to reach 1 from a given number
hailstoneLen :: Integer -> Integer
hailstoneLen n = intListLength (hailstoneSeq n) - 1

hailstoneLenTest = print (hailstoneLen 5)
