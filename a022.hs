
range :: (Ord a, Enum a) => a -> a -> [a]

range a b
  | a <= b = a : range (succ a) b
  | otherwise = []
