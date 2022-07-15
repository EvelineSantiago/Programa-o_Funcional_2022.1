selec _ [] = []
selec ys (x:xs) = if x < length ys then ys !! x : selec ys xs else selec ys xs

main = do
    print $ selec "abcdef" [0,3,2,3] -- == "adcd"