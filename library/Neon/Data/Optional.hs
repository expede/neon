module Neon.Data.Optional where

import Neon.Data.Result

data OmitArgument
  = Omit

type Optional value
  = Result OmitArgument value

omit :: Optional value
omit = Err Omit

val :: Optional value
val a = Ok a
