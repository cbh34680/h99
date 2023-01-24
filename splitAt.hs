
mySplitAt :: Int -> [a] -> ([a],[a])

mySplitAt 0 xs = ([], xs)
mySplitAt _ [] = ([], [])

mySplitAt n (x:xs) = (x:axs, bxs)
  where
    (axs, bxs) = splitAt (n - 1) xs
