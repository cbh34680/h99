
class BoolLike a where
  toBool :: a -> Bool

instance BoolLike Integer where
  toBool 0 = False
  toBool _ = True

instance BoolLike Char where
  toBool '0' = False
  toBool _ = True

instance BoolLike Bool where
  toBool = id

instance BoolLike () where
  toBool () = False

instance BoolLike (Maybe a) where
  toBool Nothing = False
  toBool _ = True

instance BoolLike a => BoolLike ([a]) where
  toBool [] = False
  toBool xs = and . map toBool $ xs

trues :: (BoolLike a) => [a] -> [a]

trues = filter toBool
