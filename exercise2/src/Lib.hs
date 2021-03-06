module Lib
    ( quicksort, fizzbuzz, fizzbuzzer, fizzbuzzerInt
    ) where

quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) =
  let smallerThanX = [out | out <- xs, out <= x]
      largerThanX = [out | out <- xs, out > x]
      smallerSorted = quicksort smallerThanX
      largerSorted = quicksort largerThanX
  in smallerSorted ++ [x] ++ largerSorted

-- FizzBuzz Implementation

fizzbuzz :: (Functor f) => f Integer -> f String
fizzbuzz = fmap fizzbuzzerInt

fizzbuzzerInt :: Integer -> String
fizzbuzzerInt = fizzbuzzer (\i -> i `rem` 3 == 0) (\i -> i `rem` 5 == 0)

fizzbuzzer :: (Show a) => (a -> Bool) -> (a -> Bool) -> a -> String
fizzbuzzer fizz buzz a
  | fizz a && buzz a  = "FizzBuzz"
  | fizz a            = "Fizz"
  | buzz a            = "Buzz"
  | otherwise         = show a
