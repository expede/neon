module Neon.Basic
  ( (|>)
  , (<|)
  , (>>)
  , (<<)
  , (.)
  , identity
  , flip
  ) where

import Prelude (flip)
import Data.Function ((&), ($), (.))

identity :: a -> a
identity a = a

infixl 0 |>
(|>) :: a -> (a -> b) -> b
(|>) = (&)

infixr 0 <|
(<|) :: (a -> b) -> a -> b
(<|) = ($)

infixr 9 <<
(<<) :: (b -> c) -> (a -> b) -> a -> c
(<<) = (.)

infixl 9 >>
(>>) :: (a -> b) -> (b -> c) -> a -> c
(>>) = flip (<<)
