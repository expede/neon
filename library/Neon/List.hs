module Neon.List (head) where

import Neon.List.Error
import Neon.Result.Type

head :: [a] -> Result Headless a
head []      = Err Headless
head (a : _) = Ok a
