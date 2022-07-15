import Data.List

gerador1 = 0 : iterate (\x -> if x > 0 then -x else 1 - x) 1

gerador2 = iterate (\x -> if x > 0 then -(x + 1)  else x * (-1) + 1) 1

gerador3 = iterate (*2) 1

gerador4 x = unfoldr f x
    where 
        f x | x == 0 = Nothing
            | otherwise = Just (x, x `div` 2)
main = do
    print $ gerador1 == [0,1,-1,2,-2,3,-3]
    print $ gerador2 == [1,-2,3,-4,5,-6]
    print $ gerador3 == [1,2,4,8,16]
    print $ gerador4 1000
