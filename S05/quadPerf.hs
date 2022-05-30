quadPerf n = verifQuad 1 n
    where verifQuad i n
            | i * i == n = True 
            | i * i > n = False
            | otherwise = verifQuad (i + 1) n