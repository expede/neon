module Neon.Functorial.Functor
  ( Functor (..)
  , map
  , over
  ) where

import Prelude (Functor (..), flip)

-- import GHC

-- [1,2,3] |> map (+ 1)
map :: Functor f => (a -> b) -> f a -> f b
map = fmap

-- (+1) |> over [1,2,3]
over :: Functor f => f a -> (a -> b) -> f b
over = flip fmap
