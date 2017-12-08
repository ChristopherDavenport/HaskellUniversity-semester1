module Lib
    ( quicksort, fizzbuzz
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

fizzbuzz :: [Int] -> [String]
fizzbuzz ints = fb (\i -> i `rem` 3 == 0) (\i -> i `rem` 5 == 0) ints

fb :: (Show a) => (a -> Bool) -> (a -> Bool) -> [a] -> [String]
fb fizz buzz l = fmap (fizzbuzzer fizz buzz) l

fizzbuzzer :: (Show a) => (a -> Bool) -> (a -> Bool) -> a -> String
fizzbuzzer fizz buzz a =
  if fizz a && buzz a
      then "FizzBuzz"
      else if fizz a
        then "Fizz"
        else if buzz a
          then "Buzz"
          else show a
