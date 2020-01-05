module Neon.Class.Functoral.Selective
  ( Selective (..)
  , branch
  ) where

import Neon.Class.Functoral.Applicative

class Applicative f => Selective f where
  select :: f (Either a b) -> f (a -> b) -> f b

branch :: Selective f => f (Either a b) -> f (a -> c) -> f (b -> c) -> f c
branch x l r = map (map Left) x `select` map (map Right) l `select` r
