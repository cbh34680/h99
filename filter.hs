import Data.Bool (bool)

myFilter :: (a -> Bool) -> [a] -> [a]

{-
myFilter f = concat . (map (\x -> if f x then [x] else []))

myFilter f = concat . (map $ \x -> if f x then [x] else [])

myFilter f = concatMap $ \x -> if f x then [x] else []

-}

myFilter f = concatMap $ \x -> bool [] [x] (f x)
