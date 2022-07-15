separa x = if x < 10 then [x] else separa (x `div` 10) ++ [x `mod` 10]

main = do   
    print $ separa 0 -- == [0]
    print $ separa 123 -- == [1,2,3]
    print $ separa 51234 -- == [5,1,2,3,4]