import Data.List (unfoldr)

myTake :: Int -> [a] -> [a]

{-
myTake n0 xs0 = unfoldr (\arg -> case arg of
    (n, x:xs)
      | n > 0 -> Just (x, (n - 1, xs))
    _         -> Nothing
  ) (n0, xs0)
-}

myTake = curry . unfoldr $ \arg -> case arg of
    (n, x:xs)
      | n > 0 -> Just (x, (n - 1, xs))
    _         -> Nothing
