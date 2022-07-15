import Data.List

purifica Nothing Nothing = Nothing
purifica (Just x) (Just y) = Just (x + y)
purifica Nothing (Just y) = Just y
purifica (Just x) Nothing = Just x

somaMaybe a b = purifica a b

main = do
    print $ somaMaybe (Just 5) (Just 7) -- == Just(12)
    print $ somaMaybe (Just 5) Nothing -- == Just(5)
    print $ somaMaybe Nothing (Just 3) -- == Just(3)
    print $ somaMaybe Nothing Nothing -- == Nothing