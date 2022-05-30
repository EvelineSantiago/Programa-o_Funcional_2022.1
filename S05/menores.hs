import Data.List
menores n xs 
    | length xs > n = menores n $ delete (maximum xs) xs
    | otherwise = xs