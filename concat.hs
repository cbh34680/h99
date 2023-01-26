
myConcat :: [[a]] -> [a]

{-
myConcat (xs:xss) = xs ++ myConcat xss
myConcat [] = []

-}

myConcat = foldr (++) []
