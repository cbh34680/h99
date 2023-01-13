
-- elementAt :: (Eq n, Num n) => [a] -> n -> a
elementAt :: (Integral n) => [a] -> n -> a

elementAt (x:_) 1 = x
elementAt (x:xs) n = elementAt xs (n - 1)
