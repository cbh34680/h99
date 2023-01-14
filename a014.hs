
dupli :: [a] -> [a]

-- dupli = concatMap (\x -> [x, x])

-- dupli [] = []
-- dupli (x:xs) = x : x : dupli xs

-- dupli = foldl (\acc x -> acc ++ [x, x]) []

dupli = foldr (\x acc -> x : x : acc) []
