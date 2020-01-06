module Neon.Functorial.Chain
  ( Chain (..)
  , linkInto
  ) where

import RIO (flip)

import Neon.Functorial.Apply

class Apply f => Chain f where
  link :: (a -> f b) -> f a -> f b

linkInto :: Chain f => f a -> (a -> f b) -> f b
linkInto = flip link
