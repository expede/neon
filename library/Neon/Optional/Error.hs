module Neon.Optional.Error (OmitArgument (..)) where

import Prelude (Maybe (..))

import Neon.Result.Resultable.Class
import Neon.Result.Type

data OmitArgument
  = Omit

instance Resultable (Maybe value) OmitArgument value where
  toResult Nothing      = Err Omit
  toResult (Just value) = Ok value
