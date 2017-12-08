import Test.QuickCheck
import Test.Framework                       (defaultMain, testGroup, Test)
import Test.Framework.Providers.QuickCheck2 (testProperty)
import Lib
import Data.List

main :: IO ()
main = defaultMain tests


tests :: [Test]
tests =
  [
    testProperty "QuickSort Equivalence" quicksortCheck,
    testProperty "ContainsFizz" containsFizz,
    testProperty "ContainsBuzz" containsBuzz
  ]

quicksortCheck :: [Integer] -> Bool
quicksortCheck x = sort x == quicksort x

containsFizz :: Integer -> Bool
containsFizz i
  | i `rem` 3 == 0  = isInfixOf "Fizz" $ fizzbuzzerInt i
  | otherwise       = True

containsBuzz :: Integer -> Bool
containsBuzz i
  | i `rem` 5 == 0  = isInfixOf "Buzz" $ fizzbuzzerInt i
  | otherwise       = True
