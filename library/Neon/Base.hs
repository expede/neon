module Neon.Base
  ( (|>)
  , (<|)
  , (.)
  , identity
  , flip
  ) where

import Flow
import RIO (flip)

identity :: a -> a
identity a = a
