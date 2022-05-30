rotEsq :: Int -> [Char] -> [Char]
rotEsq 0 x = x
rotEsq n x = (rotEsq (n-1) ((tail x)++[head x]))