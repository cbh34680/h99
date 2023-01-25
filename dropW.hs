
myDropWhile :: (a -> Bool) -> [a] -> [a]

{-
myDropWhile f all@(x:xs)
  | f x = myDropWhile f xs
  | otherwise = all

myDropWhile _ [] = []

-}

myDropWhile f (x:xs)
  | f x = myDropWhile f xs

myDropWhile _ xs = xs

