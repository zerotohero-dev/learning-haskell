-- Enums, baby!
data Thing = Shoe
           | Ship
           | SealingWax
           | Cabbage
           | King
    deriving Show

shoe :: Thing
shoe = Shoe

listO'Things :: [Thing]
listO'Things = [Shoe, SealingWax, King, Cabbage, King]

isSmall :: Thing -> Bool
isSmall Shoe       = True
isSmall Ship       = False
isSmall SealingWax = True
isSmall Cabbage    = True
isSmall King       = False

isSmallTest = print (isSmall Cabbage)

isSmall2 :: Thing -> Bool
isSmall2 Ship       = False
isSmall2 King       = False
isSmall2 _          = True

data FailableDouble = Failure
                    | OK Double
    deriving Show

a = Failure
b = OK 3.4

-- :t OK ?
failTest = print (a,b)

safeDiv :: Double -> Double -> FailableDouble
safeDiv _ 0 = Failure
safeDiv x y = OK (x / y)

safeTest = print (safeDiv 2 0, safeDiv 3 4)

failureToZero :: FailableDouble -> Double
failureToZero Failure = 0
failureToZero (OK d) = d

mappingTest = print (failureToZero Failure, failureToZero (OK 3.4))


-- Store a person's name, age, and favorite Thing
data Person = Person String Int Thing
  deriving Show

brent :: Person
brent = Person "Brent" 30 SealingWax

stan :: Person
stan = Person "Stan" 94 Cabbage

getAge :: Person -> Int
getAge (Person _ a _) = a

ageTest = print (getAge brent)

--  type and data constructor names must always start with a capital letter;
-- variables (including names of functions) must always start with a lowercase letter
data AlgDataType = Constr1 Int Double
                 | Constr2 Double
                 | Constr3 String Int Person
                 | Constr4

-- Pattenr aliases
baz :: Person -> String
baz p@(Person n _ _) = "The name field of (" ++ show p ++ ") is " ++ n

-- what if we used print, instead of putStrLn
bazTest = putStrLn (baz brent)

checkFav :: Person -> String
checkFav (Person n _ SealingWax) = n ++ ", you're my kind of person!"
checkFav (Person n _ _)          = n ++ ", your favorite thing is lame."

favTest = putStrLn (checkFav (Person "Brent" 30 SealingWax))

-- pat ::= _
--      | var
--      | var @ ( pat )
--      | ( Constructor pat1 pat2 ... patn )

-- case expression
n = case "Hello" of
  []      -> 3
  ('H':s) -> length s
  _       -> 7


failureToZero' :: FailableDouble -> Double
failureToZero' x = case x of
  Failure -> 0
  OK d    -> d

failureToZero'Test = print (failureToZero' Failure, failureToZero' (OK 3.4))

data IntList = Empty | Cons Int IntList
    deriving Show

a1 = Empty
b1 = Cons 1 a1
c1 = Cons 2 b1

intListProd :: IntList -> Int
intListProd Empty = 1
intListProd (Cons x xs) = x * intListProd xs

prodTest = print (intListProd (Cons 3 (Cons 2 (Cons 4 Empty))))

data FunkyBinaryTree =
            Leaf Char
          | Node FunkyBinaryTree Int FunkyBinaryTree
  deriving Show

tree :: FunkyBinaryTree
tree = Node (Leaf 'x') 1 (Node (Leaf 'y') 2 (Leaf 'z'))

funkyTest = print tree