base 0 b = []
base n b = base (n `div` b) b ++ [pegar (n `mod` b)]
    where
        text = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        pegar x = text !! x

main = do
    print $ base 25 10 -- == "25"
    print $ base 17 2 -- == "10001"
    print $ base 26 16 -- == "1A"
    print $ base 26012 36 -- == "K2K"