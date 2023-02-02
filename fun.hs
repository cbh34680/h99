
newtype Func a = NewFunc { unFunc :: Int -> a }

instance Functor Func where
  fmap f (NewFunc g) = NewFunc (f . g)
