module Main where

import Lib
import System.Environment

main :: IO ()
main = mainQuickSort

mainQuickSort :: IO ()
mainQuickSort =
  getArgs >>=
    \nums -> putStrLn $ show $
    quicksort $ fmap (\num -> read num :: Int) nums


mainFizzBuzz :: IO ()
mainFizzBuzz =
  putStrLn $ show $ fizzbuzz [1..30]
