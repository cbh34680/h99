
isPrime :: Int -> Bool

isPrime n
  | n < 2 = False
  | otherwise = (== 1) . length . filter (== True) . map ((== 0) . mod n) $ [2..n]

primesR a b = filter isPrime [a..b]
