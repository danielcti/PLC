limpaUm :: [Int] -> [Int]
limpaUm [] = []
limpaUm (a:as) | isNotOnlyOne (show a) = read (tiraUm (show a)) : limpaUm as
               | otherwise = limpaUm as	

tiraUm :: String -> String
tiraUm [] = []
tiraUm (a:as) | a == '1' = tiraUm as
              | otherwise = a:tiraUm as

isNotOnlyOne :: String -> Bool
isNotOnlyOne [] = False
isNotOnlyOne (a:as) | a /= '1' = True
                    | a == '1' = isNotOnlyOne as