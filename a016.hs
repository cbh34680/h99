
-- dropEvery :: [a] -> Int -> [a]

dropEvery [] _ = []

dropEvery xs n = init (take n xs) ++ f
  where
    f | length xs >= n = dropEvery (drop n xs) n
      | otherwise      = xs
