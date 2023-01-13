
compress :: (Eq a) => [a] -> [a]

compress [] = []
compress (x:xs) = x : f x xs

f p [] = []
f p (x:xs)
  | p == x = f x xs
  | otherwise = x : f x xs
