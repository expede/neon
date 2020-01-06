module Neon.Functorial.Apply (Apply (..)) where

import Neon.Functorial.Functor

class Functor f => Apply f where
  apply :: f (a -> b) -> f a -> f b
