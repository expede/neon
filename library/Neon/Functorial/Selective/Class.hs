module Neon.Functorial.Selective.Class (Selective (..)) where

import Neon.Functorial.Applicative
import Neon.Result.Type

class Applicative f => Selective f where
  select :: f (Result a b) -> f (a -> b) -> f b

-- branch :: Selective f => f (Either a b) -> f (a -> c) -> f (b -> c) -> f c
-- branch x l r = map (map Left) x `select` map (map Right) l `select` r
