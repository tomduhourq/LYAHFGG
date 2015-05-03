-- removeNonUpperCase
removeNonUpperCase str = [c | c <- str, elem c ['A'..'Z']]

-- Int is much more efficient than Integer (can represent very big numbers)
factRec :: Int -> Int -> Int
factRec acum 1 = acum
factRec acum n = factRec (acum * n) (n-1)
factorial n = factRec 1 n
