module Neon.Class.Functoral.Monad where

import Neon.Class.Functoral.Applicative
import Neon.Class.Functoral.Chain

type Monad m = (Applicative m, Chain m)

bind = linkWith
