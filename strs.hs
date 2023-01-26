
(.++) :: [a] -> [a] -> [a]

{-
(x:xs) .++ xb = x : xs .++ xb
[] .++ xb = xb

xs .++ ys = foldr (:) ys xs

(.++) = f
  where
    f xs ys = foldr (:) ys xs

(.++) = flip f
  where
    f ys xs = foldr (:) ys xs

(.++) = flip f
  where
    f = foldr (:)

(.++) = flip (foldr (:))
-}

(.++) = flip $ foldr (:)

