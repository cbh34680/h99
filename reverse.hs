import Data.List (foldl')

myReverse :: [a] -> [a]

{-
myReverse = f []
  where
    f :: [a] -> [a] -> [a]
    f acc (x:xs) = f (x:acc) xs
    f acc []     = acc

myReverse = foldl (\acc x -> x:acc) []

myReverse = foldl (flip (:)) []
-}

myReverse = foldl' (flip (:)) []
