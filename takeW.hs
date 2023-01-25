import Data.Bool (bool)
import Data.List (unfoldr)

myTakeWhile :: (a -> Bool) -> [a] -> [a]

{-
myTakeWhile f (x:xs)
  | f x = x : myTakeWhile f xs

myTakeWhile _ _ = []

myTakeWhile f = foldr (\x -> if f x then (x:) else (const [])) []

myTakeWhile f = foldr (\x -> bool (const []) (x:) (f x)) []

-}

myTakeWhile f = unfoldr $ \arg -> case arg of
    (x:xs)
      | f x -> Just (x, xs)
    _       -> Nothing
