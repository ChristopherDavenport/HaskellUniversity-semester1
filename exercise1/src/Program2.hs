module Program2
  ( program2Main,
    program2MainBind
  ) where

program2Main :: IO()
program2Main = do
  putStrLn "Hey there, what is your name?"
  name <- getLine
  putStrLn $ "Pleased to meet you, " ++ name ++ "!"

program2MainBind :: IO()
program2MainBind =
  putStrLn "Hey there, what is your name?" >>
  getLine >>= \name ->
  putStrLn $ "Pleased to meet you, " ++ name ++ "!"
