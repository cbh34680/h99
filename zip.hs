import Data.List (unfoldr)

myZip :: [a] -> [b] -> [(a,b)]

{-

myZip [] _ = []
myZip _ [] = []

myZip (x:xs) (y:ys) = (x,y) : myZip xs ys

myZip = curry . unfoldr $ \x -> case x of
  (x:xs, y:ys) -> Just ((x,y), (xs,ys))
  _            -> Nothing
-}


myZip = curry $ unfoldr sub
  where sub x = case x of
                  (x:xs, y:ys) -> Just ((x,y), (xs,ys))
                  _            -> Nothing
