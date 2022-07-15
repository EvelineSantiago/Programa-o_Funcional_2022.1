sdig n = if n == 0 then 0 else mod n 10 + sdig (n `div` 10)

main = do
    print $ sdig 4132 -- == 10
    print $ sdig 328464584658 -- == 63