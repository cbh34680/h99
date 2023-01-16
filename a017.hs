
split :: [a] -> Int -> ([a],[a])

-- split xs n = (,) <$> take n <*> drop n $ xs

-- split = flip f
--   where f n = (,) <$> take n <*> drop n

split = flip (\n -> (,) <$> take n <*> drop n)
