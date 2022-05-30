deletee x [] = []
deletee x (y:ys) | x == y = ys
                 | otherwise = y : deletee x ys