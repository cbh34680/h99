
mmaybe :: [Maybe a] -> [a]

mmaybe [] = []
mmaybe (Nothing:xs) = mmaybe xs
mmaybe (Just x:xs) = x: mmaybe xs
