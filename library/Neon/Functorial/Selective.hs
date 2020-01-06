module Neon.Functorial.Selective
  ( module Neon.Functorial.Selective.Class
  , branch
  ) where

import Neon.Functorial.Functor
import Neon.Functorial.Selective.Class

import Neon.Result.Type

branch :: Selective f => f (Result a b) -> f (a -> c) -> f (b -> c) -> f c
branch mapper left right =
  map (map Err) mapper
    `select` map (map Ok) left
    `select` right
