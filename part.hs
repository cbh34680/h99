import Data.Bool (bool)

myPartition :: (a -> Bool) -> [a] -> ([a],[a])

{-
myPartition _ [] = ([], [])

myPartition f (x:xs)
  | f x = (x:axs, bxs)
  | otherwise = (axs, x:bxs)
  where
    (axs, bxs) = myPartition f xs

myPartition f = foldr (\x (axs, bxs) -> if f x then ((x:axs), bxs) else (axs, (x:bxs)) ) ([],[])
-}

myPartition f = foldr (\x (axs, bxs) -> bool (axs, (x:bxs)) ((x:axs), bxs) (f x)) ([],[])
