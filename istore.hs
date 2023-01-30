
class IStore s where
  empty :: s
  put :: Integer -> s -> s
  get :: s -> Maybe (Integer, s)

--
newtype IList = IList [Integer] deriving Show

instance IStore IList where
  empty = IList []
  put x (IList xs) = IList $ x : xs
  get (IList []) = Nothing
  get (IList (x:xs)) = Just (x, IList xs)

--
gen :: IStore a => a

gen = put 3 . put 2 . put 1 $ empty

--
get3 :: IStore a => a -> Maybe [Integer]

get3 s1 = case get s1 of
  Just (x, s2) -> case get s2 of
    Just (y, s3) -> case get s3 of
      Just (z, _) -> Just [x, y, z]
      Nothing -> Nothing
    Nothing -> Nothing
  Nothing -> Nothing

