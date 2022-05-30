removerMaior xs = [x | x <- xs, x /= maior]
    where maior = maximum xs