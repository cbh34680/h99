
fldl :: (a -> b -> a) -> a -> [b] -> a

fldl _ acc [] = acc
fldl f acc (x:xs) = fldl f (f acc x) xs
