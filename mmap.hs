
mmap :: (a -> b) -> Maybe a -> Maybe b
mmap _ Nothing  = Nothing
mmap f (Just a) = Just $ f a

amap :: (a -> b) -> [a] -> [b]
amap _ [] = []
amap f xs = [ f x | x <- xs ]
