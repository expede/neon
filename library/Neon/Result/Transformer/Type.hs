module Neon.Result.Transformer.Type (ResultT (..)) where

import Neon.Result.Type

newtype ResultT err m val
  = ResultT { runResultT :: m (Result err val) }
