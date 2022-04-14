import Data.ByteString (count)
countNeg [] =  0
countNeg (x:xs) = countNeg xs + count x
    where
        count x = if x < 0 
                    then 1
                else 0