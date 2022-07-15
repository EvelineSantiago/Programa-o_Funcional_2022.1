rev :: Int -> Int 
rev x = read $ reverse $ show x

main = do
    print $ rev 1923 -- == "3291"
    print $ rev 123 -- == "321"
    print $ rev 39402 -- == "20493"
    print $ rev 5 -- == "5"