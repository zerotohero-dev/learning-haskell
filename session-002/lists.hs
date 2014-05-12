lostNumbers = [4,8,15,16,23,42]
concatMe = [2,3,4,5] ++ [6,7,8,9]
addWords = "Hello " ++ "world"
addWords' = ['w','o'] ++ ['o','t']

testCons = 'A':" small cat."
consNum = 5:[1,2,3,4]

adnotherConcat = [1,2,3,4] ++ [5]

sugar = 1:2:3:[]

getAtIndex = "loremIpsumDolor" !! 6

nestedList = [[1,2,3,4],[5,3,3,3],[1,2,2,3,4],[1,2,3]]
    
addingListToAList = nestedList ++ [[1,2,3]]

addingListToAList' = [1,1,1]:nestedList

comparison = [1,2,3] > [1,2,1]

getHead = head [1,2,3,4,5] -- 1
getTail = tail [1,2,3,4,5] -- 2,3,4,5
getLast = last [1,2,3,4,5] -- 5
getInit = init [1,2,3,4,5] -- 1,2,3,4
getLength = length [1,2,3,4,5]
isNull = null []
doReverse = reverse [1,2,3,4,5]

takeFirstTwo = take 2 [1,2,3,4,5]
dropFirstTwo = drop 2 [1,2,3,4,5]

getMax = maximum [1,2,3,4,5]
getMin = minimum [1,2,3,4,5]
getSum = sum [1,2,3,4,5]
getProduct = product [1,2,3,4,5]

isInsideList = 4 `elem` [1,2,3,4,5]
    