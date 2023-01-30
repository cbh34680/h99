
class IStore s where
  empty :: s
  store :: Integer -> s -> s
  load :: s -> Maybe (Integer, s)

--
gen :: IStore a => a
gen = store 3 . store 2 . store 1 $ empty

--
load3 :: IStore a => a -> Maybe [Integer]

load3 s1 = case load s1 of
  Just (x, s2) -> case load s2 of
    Just (y, s3) -> case load s3 of
      Just (z, s4) -> Just [x,y,z]
      Nothing -> Nothing
    Nothing -> Nothing
  Nothing -> Nothing

load3' s1 = load s1 >>= \(x, s2) -> load s2 >>= \(y, s3) -> load s3 >>= \(z, s4) -> return [x,y,z]

load3'' s1 = do
  (x, s2) <- load s1
  (y, s3) <- load s2
  (z, s4) <- load s3
  return [x,y,z]

--
newtype IList = NewList [Integer] deriving Show

-- genIList :: IList
genIList = foldr store (empty::IList) [1..10]

instance IStore IList where
  empty = NewList []
  store x (NewList xs) = NewList (x:xs)
  load (NewList []) = Nothing
  load (NewList (x:xs)) = Just (x, NewList xs)
