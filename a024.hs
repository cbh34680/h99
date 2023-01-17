import System.Random

diff_select :: Int -> Int -> IO [Int]

diff_select n m
  | n > m = error "n > m"
  | otherwise = f []
    where
      f xs
        | length xs == n = return xs
        | otherwise = 
            do
              r <- randomRIO (1,m)
              a <- if elem r xs then f xs else f (r:xs)
              return a
