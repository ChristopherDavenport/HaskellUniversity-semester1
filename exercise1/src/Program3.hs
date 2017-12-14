module Program3
  ( program3Main
  ) where

import Program2

program3Main :: IO()
program3Main = forever program2MainBind

forever :: (Monad m) => m a -> m a
forever m = m >> forever m
