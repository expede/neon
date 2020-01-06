{-# LANGUAGE UndecidableInstances #-}

module Neon.Functorial.Monad
  (module Control.Monad) where

import qualified Control.Applicative as OG
import           Control.Monad

import           Neon.Functorial.Applicative
import           Neon.Functorial.Chain

instance (OG.Applicative m, Chain m) => Monad m where
  (>>=) = linkInto

bind = link
