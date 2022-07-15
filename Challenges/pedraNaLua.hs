import Control.Monad (replicateM)


toInt :: String -> Int
toInt x = read x :: Int

desempacota :: String -> (Int, Int)
desempacota linha = (a, b)
    where
        [a, b] = map toInt (words linha)

classificou (ind, (a, b)) = a >= 10 && b >= 10

obj (a, b) = abs (a - b)

competir (ind1, pedras1) (ind2, pedras2) =
    if obj pedras1 < obj pedras2
        then (ind1, pedras1)
        else (ind2, pedras2)

processa :: [String] -> String
processa vetor = if null classificados then "sem ganhador" else show ganhador
    where
        tuplas = map desempacota vetor
        grudar = zip [0..] tuplas
        classificados = filter classificou grudar
        ganhador = fst $ foldl1 competir classificados


main :: IO ()
main = do
    print $ processa ["8 11", "10 15"] == "1"
    print $ processa ["9 12", "11 13", "10 11"] == "2"
    print $ processa ["12 15", "16 14", "10 9"] == "1"
    print $ processa ["12 15", "20 23", "10 9", "35 35"] == "3"
    print $ processa ["10 8", "9 13"] == "sem ganhador"
    print $ processa ["8 9", "12 7"] == "sem ganhador"
    print $ processa ["10 9", "15 19"] == "1"
    print $ processa ["9 8", "9 12", "12 15", "18 19"] == "3"