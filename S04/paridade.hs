paridade xs 
    | odd (length (filter (==True) xs)) = True
    | otherwise = False