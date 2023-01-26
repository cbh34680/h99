
myUnzip :: [(a,b)] -> ([a],[b])

{-
myUnzip [] = ([],[])

myUnzip ((xa,xb):xs) = (xa:xas,xb:xbs)
  where
    (xas,xbs) = myUnzip xs
-}

myUnzip = foldr (\(x,y) (xs,ys) -> (x:xs,y:ys)) ([],[])
