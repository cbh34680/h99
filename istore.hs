
class IStore s where
  empty :: s
  store :: Integer -> s -> s
  load :: s -> Maybe (Integer, s)

regist :: IStore s => [Integer] -> s

regist = foldr store empty

load3 s1 = load s1 >>= \(x, s2) -> load s2 >>= \(y, s3) -> load s3 >>= \(z, s4) -> return [x,y,z]

--

newtype IList = NewIList [Integer] deriving Show

instance IStore IList where
  empty = NewIList []
  store x (NewIList xs) = NewIList (x : xs)
  load (NewIList []) = Nothing
  load (NewIList (x:xs)) = Just (x, NewIList xs)

registIList :: [Integer] -> IList
registIList = foldr store empty
