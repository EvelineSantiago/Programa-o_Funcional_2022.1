splitints :: (Int -> Bool) -> [Int] -> ([Int],[Int])
splitints p xs = (filter p xs, filter (not . p) xs)