sequencia n m =
    if n == 0 then []
    else m : sequencia (n-1) (m+1)