
insertAt :: a -> [a] -> Int -> [a]

{-
insertAt c xs n = get (< n) xs ++ [c] ++ get (>= n) xs
  where
    get f xs = [ c | (n, c) <- zip [1..] xs, f n ]
-}

{-
insertAt c xs n = take p xs ++ c : drop p xs
  where
    p = n - 1
-}

insertAt c [] _ = []
insertAt c xs 1 = c : xs
insertAt c (x:xs) n = x : insertAt c xs (n - 1)
  
