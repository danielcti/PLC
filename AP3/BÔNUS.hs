data Tree t = Node t (Tree t) (Tree t) 
                     | Leaf t

alturaArvore :: Tree t -> Int
alturaArvore (Leaf t) = 1
alturaArvore (Node t ae ad) = 1 + max (alturaArvore ae) (alturaArvore ad)