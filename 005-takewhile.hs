takeWhileTest1 = takeWhile (/=' ') "elephants know how to party"

sumOfAllOddSquaresLessThan10K = sum (takeWhile (<10000) (filter odd (map (^2) [1..])))

sumOfAllOddSquaresLessThan10KWithComprehension =
    sum (takeWhile (<10000) [m | m <- [n^2 | n <- [1..]], odd m])
