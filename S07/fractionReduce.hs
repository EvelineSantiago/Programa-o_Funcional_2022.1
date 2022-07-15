reduce (x, y) = (x `div` gcd x y, y `div` gcd x y)

main = do
    print $ reduce (10, 2) -- == (5,1)
    print $ reduce (15,6) -- == (5,2)
    print $ reduce (30,12) -- == (5,2)
    print $ reduce (120,48) -- == (5,2)
    print $ reduce (50,100) -- == (1,2)