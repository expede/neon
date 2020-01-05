module Neon.Class.Functoral.Chain
  ( Chain (..)
  , linkWith
  ) where

import RIO (flip)

import Neon.Class.Functoral.Apply

class Apply f => Chain f where
  linkInto :: f a -> (a -> f b) -> f b

linkWith :: Chain f => (a -> f b) -> f a -> f b
linkWith = flip linkInto
