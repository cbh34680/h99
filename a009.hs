
pack :: (Eq a) => [a] -> [[a]]

pack [] = []
pack xs = (fst t) : pack (snd t)
  where
    t = myPartition (== (head xs)) xs
    myPartition f xs = (takeWhile f xs, dropWhile f xs)
