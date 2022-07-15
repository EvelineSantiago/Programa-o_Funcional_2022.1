myreplicate x n = if x == 0 then [] else n : replicate (x-1) n

main = do 
    print $ myreplicate 4 0 -- == [0, 0, 0, 0]
    print $ myreplicate 2 True -- == [True, True]
    print $ myreplicate 3 [5] -- == ["5", "5", "5"]