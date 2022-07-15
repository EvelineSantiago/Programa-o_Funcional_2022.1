import Data.List

--Dado um vetor de Maybe [Int], filtre apenas os valores que são formados por Just
filterMaybe :: [Maybe Int] -> [Int]
filterMaybe [] = []
filterMaybe xs = [x | Just x <- xs]