
myConcatMap :: (a -> [b]) -> [a] -> [b]

{-
myConcatMap f = concat . map f

myConcatMap f = foldr (\x acc -> f x ++ acc) []


:{
  (`map` [6,7]) $ \x ->
  (`map` [8,9]) $ \y ->
    x + y
:}

-}

:{
  (`concatMap` [6,7]) $ \x ->
    (`concatMap` [8,9]) $ \y ->
    [x + y]
:}
