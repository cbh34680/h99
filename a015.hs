
repli :: [a] -> Int -> [a]

-- repli xs n = concatMap (\x -> take n $ repeat x) xs
repli xs n = concatMap (take n . repeat) xs
