divide xs 0 = ([], xs)
divide xs x = (take x xs, drop x xs) 