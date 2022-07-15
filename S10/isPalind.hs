isPalind string = string == reverse string

main = do
    print $ isPalind "ana" -- == True
    print $ isPalind "123aa321" -- == True
    print $ isPalind "cachorro" -- == False