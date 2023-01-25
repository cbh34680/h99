
mySpan :: (a -> Bool) -> [a] -> ([a],[a])

mySpan f (x:xs)
  | f x = (x:axs, bxs)
  where
    (axs, bxs) = mySpan f xs

mySpan f xs = ([], xs)
