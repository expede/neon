module Neon.Effect.Log (Level (..)) where

import RIO

data Level
  = Debug
  | Info
  | Warn
  | Error
  | Other Text

-- type Loggable m => MonadLogger m

-- log :: Loggable m => Level -> Text -> m ()
-- log Debug = logDebugN
-- log Info  = logInfoN
-- log Warn  = logWarnN
-- log Error = logErrorN
-- log other = logOtherN other

-- foo ::
--   ( Effect.Loggable m
--   , Effect.Reflect  m
--   )
--   => m ()
