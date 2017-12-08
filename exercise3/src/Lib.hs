module Lib where

import Data.List

someFunc :: IO ()
someFunc = putStrLn "someFunc"

data Item = Apple | Orange
  deriving (Eq, Ord, Read, Show)


itemNumverGenerator :: [Item] -> [Item]
itemNumverGenerator x =
  let apples  = [out | out <- x, out == Apple]
      oranges = [out | out <- x, out == Orange]
      appleCount = length apples
      orangeCount = length oranges
      newAppleCount = itemCountChanger Apple appleCount
      newOrangeCount = itemCountChanger Orange orangeCount
  in fmap (const Apple) [1..newAppleCount] ++ fmap (const Orange) [1..newOrangeCount]

itemCountChanger :: Item -> Int -> Int
itemCountChanger a i
  | a == Apple  = div i 2 + i `mod` 2
  | a == Orange = div i 3 * 2 + i `mod` 3

defaultCostCalc :: [Item] -> Rational
defaultCostCalc x = sum $ fmap defaultCost x

defaultCost :: Item -> Rational
defaultCost a
  | a == Apple = 0.60
  | a == Orange = 0.25
