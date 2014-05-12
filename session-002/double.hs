doubleMe
    x = x + x

doubleUs x y =
    doubleMe x + doubleMe y

doubleSmallNumber x =
    if x > 100
    then x
    else x * 2

doubleSmallNumber' x =
    (if x > 100 then x else x * 2) + 1

lotsOfNumbers =
    [2, 4, 6, 8, 10]

concatLists =
    [1, 2, 3, 4] ++ [10, 11, 12, 13]

woot =
    ['w', 'o'] ++ ['o', 't']

getCat =
    'A': " small cat!"

sugar =
    1:2:3:[]

indexOf =
    "Volkan Ozcelik" !! 3

nested =
    [[1,2,3,4],[4,5,6,7],[8,9,10],[10,11,12]]

moreNest =
    [3,3,3]:nested

compareMe =
    [3,4,2] < [3,4,3]

getHead =
    head [1,2,3,4]

getTail =
    tail [1,2,3,4]

getLast =
    last [1,2,3,4]

getInit =
    init [1,2,3,4]

getLength =
    length [1,2,3,4]

isEmpty =
    null [1,2,3]

reverseList =
    reverse [1,2,3,4]

extractFromStart =
    take 3 [1,2,3,4]

dropFromStart =
    drop 2 [1,2,3,4,5]

getMax =
    maximum [12,121,1,14,46,22]

getMin =
    minimum [12,121,1,14,46,22]

getSum =
    sum [12,121,1,14,46,22]

getProduct =
    product [12,121,1,14,46,22]

isElem =
    elem 4 [1,2,3,4]

isElem' =
    4 `elem` [1,2,3,4]
