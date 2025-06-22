-- factorial.hs - Recursive factorial

factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n - 1)

main = do
    print (factorial 5)
