
{-

c ^ 2 = a ^ 2 + b ^ 2

[ [a,b,c] | a <- [1..5], b <- [1..5], c <- [1..5], c ^ 2 == a ^ 2 + b ^ 2 ]

sort = Data.List.sortBy compare

Data.List.nub $ fmap sort [ [a,b,c] | a <- [1..5], b <- [1..5], c <- [1..5], c ^ 2 == a ^ 2 + b ^ 2 ]

-}

myUniq :: (Eq a) => [a] -> [a]

myUniq [] = []

myUniq arg@(a:as) = a : f a arg
  where
    f _ [] = []
    f p (x:xs)
      | p == x    = next
      | otherwise = x : next
      where
        next = f x xs

