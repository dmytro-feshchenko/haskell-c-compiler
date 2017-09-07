module Main where
  import System.Environment

  main :: IO ()
  main = do
    args <- getArgs
    putStrLn ("Main module created, args: " ++ args !! 0)
