module Neon.Optional.Type
  ( module Neon.Optional.Error
  , Optional
  ) where

import Neon.Result.Type
import Neon.Optional.Error

type Optional value
  = Result OmitArgument value
