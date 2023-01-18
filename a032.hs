
myGCD :: Int -> Int -> Int

myGCD a b = f (max (abs a) (abs b)) (min (abs a) (abs b))
  where
    f a' b'
      | r == 0 = b'
      | otherwise = myGCD b' r
      where
        r = mod a' b'

