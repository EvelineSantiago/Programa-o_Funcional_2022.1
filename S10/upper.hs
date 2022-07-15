import Data.Maybe
import Distribution.Compat.CharParsing ()

toLower l
  | isNothing res = l
  | otherwise = fromJust res
  where res = lookup l $ zip ['A'..'Z'] ['a'..'z']

toUpper l
  | isNothing res = l
  | otherwise = fromJust res
  where res = lookup l $ zip ['a'..'z'] ['A'..'Z']

upper = map toUpper
k n
  | null n = ""
  | otherwise = toUpper (head n) : upper (tail n) ++ " "


main = do
    print $ upper "abc" -- == "ABC"
    print $ upper "a Casa Caiu" -- == "A CASA CAIU"
    print $ upper "tenho 45 ABCs" -- == "TENHO 45 ABCS"