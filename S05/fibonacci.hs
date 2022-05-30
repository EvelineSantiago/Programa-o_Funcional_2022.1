{-# OPTIONS_GHC -Wno-incomplete-patterns #-}
fib 0 = 0
fib 1 = 1
fib n = fib (n-1) + fib (n-2)