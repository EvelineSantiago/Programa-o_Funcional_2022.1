max3 x y z 
    | x > y && x > z = x
    | x < y && y > z = y
    | otherwise = z