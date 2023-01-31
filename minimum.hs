newtype Mini a = NewMini { getMini :: a } deriving (Bounded,Eq,Ord,Show)

instance (Ord a) => Semigroup (Mini a) where
  (NewMini a) <> (NewMini b) = NewMini (min a b)

instance (Ord a, Bounded a) => Monoid (Mini a) where
  mempty = NewMini maxBound
