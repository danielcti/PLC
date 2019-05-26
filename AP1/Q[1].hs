quantidade :: Int -> Int -> Int
quantidade 0 digit = 0
quantidade range digit | isInNumber (show(range)) (show(digit)) = 1 + quantidade (range-1) digit
                       | otherwise = quantidade (range-1) digit

isInNumber :: String -> String -> Bool
isInNumber [] (a:as) = False
isInNumber (n:ns) (a:as) | n == a = True
                         | otherwise = isInNumber (ns) (a:as)
