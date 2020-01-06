module Neon.Equatable.Class
  ( module RIO
  , (!=)
  ) where

import RIO (Eq (..), Bool)

infix 4 !=
(!=) :: Eq a => a -> a -> Bool
(!=) = (/=)
