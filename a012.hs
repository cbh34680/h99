import Data.List

data Elem a = Single a | Multiple Int a deriving (Read, Show)

--
encodeModified :: Eq a => [a] -> [Elem a]

encodeModified = map (\xs -> f (length xs) (head xs)) . group
  where
    f 1 c = Single c
    f n c = Multiple n c

--
decodeModified :: Eq a => [Elem a] -> [a]

decodeModified = concatMap f
  where
    f (Single c) = [c]
    f (Multiple n c) = take n $ repeat c
