import Data.List

encode :: Eq a => [a] -> [(Int, a)]

encode = map (\xs -> (length xs, head xs)) . group
