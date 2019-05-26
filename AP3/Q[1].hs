data Tree t = Node t (Tree t) (Tree t)
             | Leaf t

isSortedTree :: Ord t => Tree t -> Bool
isSortedTree (Leaf t) = True
isSortedTree (Node x ae ad)   | isSortedList (treeToList (Node x ae ad)) = True
                              | otherwise = False


isSortedList :: (Ord a) => [a] -> Bool
isSortedList [] = True
isSortedList [x] = True
isSortedList (x:y:xs) | x <= y = isSortedList (y:xs) 
                      | otherwise = False

treeToList :: Ord t => Tree t -> [t]
treeToList (Leaf t) = [t]
treeToList (Node x ae ad) = (treeToList ae) ++ [x] ++ (treeToList ad)