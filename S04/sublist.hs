sublist inicio fim xs = drop inicio' . take fim' $ xs
    where
        inicio' = if inicio < 0 then inicio + length xs else inicio
        fim' = if fim < 0 then fim + length xs else fim 