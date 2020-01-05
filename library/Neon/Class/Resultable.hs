module Neon.Class.Resultable where

import RIO

import Neon.Data.Result
import Neon.Data.Optional

class Resultable a err value where
  toResult :: a -> Result err value

instance Resultable (Either err value) err value where
  toResult (Left  err)   = Err err
  toResult (Right value) = Ok value

instance Resultable (Maybe value) () value where
  toResult Nothing      = Err ()
  toResult (Just value) = Ok value

instance Resultable (Maybe value) OmitArgument value where
  toResult Nothing      = omit
  toResult (Just value) = Ok value
