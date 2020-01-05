module Neon.Class.Equatable
  ( module RIO
  , (!=)
  ) where

import RIO (Eq (..))

infix 4 (!=)
(!=) :: Eq a => a -> a -> Bool
(!=) = (/=)
