{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# LANGUAGE UndecidableInstances #-}

module Neon.Functorial.Applicative (Applicative (..)) where

import qualified Control.Applicative as OG

import           Neon.Functorial.Apply
import           Neon.Functorial.Functor

class Apply f => Applicative f where
  pure :: a -> f a

instance (Apply f, OG.Applicative f) => Applicative f where
  pure = OG.pure

instance (Functor f, Applicative f) => OG.Applicative f where
  pure  = pure
  (<*>) = apply
