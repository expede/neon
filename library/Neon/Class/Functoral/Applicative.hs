module Neon.Class.Functoral.Applicative (Applicative (..)) where

import Neon.Class.Functoral.Apply

class Apply f => Applicative f where
  into :: a -> f a
