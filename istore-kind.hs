
class Store (s :: * -> *) where
  empty :: s a
  store :: Ord a => a -> s a -> s a
  load :: s a -> Maybe (a, s a)

instance Store [] where
  empty = []
  store = (:)
  load (x:xs) = Just (x, xs)
  load [] = Nothing

