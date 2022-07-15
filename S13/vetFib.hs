vetFib 0 = [0]
vetFib 1 = [0]
vetFib 2 = [0, 1]
vetFib n = fib
    where 
        fib = vetFib (n-1) ++ [last (vetFib (n-1)) + last (vetFib (n-2))]

main = do
    print $ vetFib 2 -- == [0,1]
    print $ vetFib 6 -- == [0,1,1,2,3,5]
    print $ vetFib 9 -- == [0,1,1,2,3,5,8,13,21]