{-# OPTIONS_GHC -Wno-incomplete-patterns #-}
maior [x] = x
maior (x:xs) = if maximo_resto > x then maximo_resto else x
    where
        maximo_resto = maior xs