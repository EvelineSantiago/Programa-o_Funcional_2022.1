qsort [] = []
qsort (x:xs) = qsort [y | y <- xs, y < x] ++ [x] ++ qsort [y | y <- xs, y >= x]

main = do
    print $ qsort [7,3,5,7,8,4] -- == [3,4,5,7,7,8]
    print $ qsort [7,3,5,7,8,4,4] -- == [3,4,4,5,7,7,8]
    print $ qsort [7,3,5,7,8,4,5] -- == [3,4,5,5,7,7,8]