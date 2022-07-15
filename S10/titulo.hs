import Data.Maybe

toUpper l
  | isNothing res = l
  | otherwise = fromJust res
  where res = lookup l $ zip ['a'..'z'] ['A'..'Z']

toLower l
  | isNothing res = l
  | otherwise = fromJust res
  where res = lookup l $ zip ['A'..'Z'] ['a'..'z']

strL = map toLower
k n
  | null n = ""
  | otherwise = toUpper (head n) : strL (tail n) ++ " "

titulo a = foldl (\x y -> x ++ k y) "" $ words a
main = do
    print $ titulo "FuLaNo bElTrAnO silva" -- == "Fulano Beltrano Silva"