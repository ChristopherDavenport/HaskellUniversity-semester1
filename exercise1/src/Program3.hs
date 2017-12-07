module Program3
  ( program3Main
  ) where

import Program2
import Control.Monad

program3Main :: IO()
program3Main = forever program2MainBind
