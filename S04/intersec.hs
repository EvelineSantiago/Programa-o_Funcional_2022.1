intersec [] [] = []
intersec xs ys = [x | x <- xs, elem x ys]