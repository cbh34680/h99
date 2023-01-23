
-- takeTo :: [Int] -> [Int]

takeTo xs = foldr (\x acc -> [100]) [] xs :: [Int]
