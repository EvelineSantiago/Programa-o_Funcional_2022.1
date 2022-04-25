{-# OPTIONS_GHC -Wno-incomplete-patterns #-}
at' xs 0 = head xs
at' (x:xs) ind = at' xs (ind - 1) 

at xs ind = at' xs ind2
    where 
         ind2 = mod ind $ length xs

main = do
    print $ at [2,7,3,9] 2
    print $ at [2,7,3,9] 0
    print $ at [2,7,3,9] (-1)
    print $ at [2,7,3,9] (-2)
