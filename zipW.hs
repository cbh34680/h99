import Data.List (unfoldr)

myZipWith :: (a -> b -> c) -> [a] -> [b] -> [c]

{-
myZipWith f (x:xs) (y:ys) = f x y : myZipWith f xs ys
myZipWith _ [] _ = []
myZipWith _ _ [] = []
-}

myZipWith f = curry . unfoldr $ \x -> case x of
  ((x:xs), (y:ys)) -> Just (f x y, (xs, ys))
  _                -> Nothing
