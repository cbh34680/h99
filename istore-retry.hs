
class IStore s where
  empty :: s
  put :: Integer -> s -> s
  get :: s -> Maybe (Integer, s)

--
newtype IList = IList [Integer] deriving Show

instance IStore IList where
  ...

--
gen :: IStore a => a

gen = put 3 . put 2 . put 1 $ empty

--
get3 :: IStore a => a -> Maybe [Integer]

get3 s1 = ...


