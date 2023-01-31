{-# LANGUAGE GeneralizedNewtypeDeriving #-}

import Data.Monoid
import Control.Applicative

newtype AppMon f m = AppMon { getAppMon :: f m }
  deriving (Functor, Applicative)

instance (Applicative f, Monoid m) => Monoid (AppMon f m) where
  mempty = pure mempty
  mappend = liftA2 mappend

newtype Max a = Max { getMax :: a } deriving (Bounded, Eq, Ord)
newtype Min a = Min { getMin :: a } deriving (Bounded, Eq, Ord)

instance (Bounded a, Ord a) => Monoid (Max a) where
  mempty = minBound
  mappend = max

instance (Bounded a, Ord a) => Monoid (Min a) where
  mempty = maxBound
  mappend = min
