
removeAt :: Int -> [a] -> (a, [a])

removeAt n xs = ( xs !! p, f )
  where
    p = n - 1
    f = take p xs ++ drop n xs
