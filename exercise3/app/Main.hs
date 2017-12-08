module Main where

import Lib
import System.Environment

main :: IO ()
main = getArgs >>=
  \items ->
  print $ fromRational $
  defaultCostCalc $
  itemNumverGenerator $
  fmap (\item -> read item :: Item) items
