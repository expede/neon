module Neon.Optional
  ( module Neon.Optional.Type
  , omit
  , val
  ) where

import Neon.Result.Type
import Neon.Optional.Type

omit :: Optional value
omit = Err Omit

val :: value -> Optional value
val a = Ok a
