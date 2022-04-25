uniao [] [] = []
uniao [] (x:xs) = (x:xs)
uniao (x:xs) [] = (x:xs)
uniao xs ys = xs ++ [y | y <- ys, not (elem y xs)]