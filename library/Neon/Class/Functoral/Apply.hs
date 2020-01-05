module Neon.Class.Functoral.Apply
  ( Apply (..)
  , provideTo
  ) where

import RIO

class Functor f => Apply f where
  apply :: f (a -> b) -> f a -> f b

provideTo :: Apply f => f a -> f (a -> b) -> f b
provideTo = flip apply
