
rotate :: [a] -> Int -> [a]

rotate xs n = take len . drop (len + n') . cycle $ xs
  where
    len = length xs
    n' = mod n len
