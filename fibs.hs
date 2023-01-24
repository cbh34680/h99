
fibs, tfibs :: [Int]

fibs@(_: tfibs) = 0: 1: zipWith (+) fibs tfibs

--

fibs' :: [Int]

fibs' = f 0 1
  where
    f x y = x : f y (x + y)
