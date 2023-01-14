import Data.List

data Elem a = Single a | Multiple Int a deriving Show

encodeModified :: Eq a => [a] -> [Elem a]

encodeModified = map (\xs -> f (length xs) (head xs)) . group
  where
    f 1 c = Single c
    f n c = Multiple n c
