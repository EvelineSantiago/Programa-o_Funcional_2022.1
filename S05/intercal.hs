intercal [] xs = xs
intercal ys [] = ys
intercal (x:xs) (y:ys) = x:y:intercal xs ys