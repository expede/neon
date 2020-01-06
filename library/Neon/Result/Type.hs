module Neon.Result.Type (Result (..)) where

import RIO

data Result err value
  = Err err
  | Ok  value
  deriving (Show, Eq)

instance Functor (Result err) where
  fmap _ (Err err)   = Err err
  fmap f (Ok  value) = Ok (f value)

-- instance Bifunctor (Result err value) where

instance Applicative (Result err) where
  pure = Ok
  Err e <*> _ = Err e
  Ok  f <*> r = fmap f r

instance Monad (Result err) where
  Err e >>= _ = Err e
  Ok  v >>= k = k v
