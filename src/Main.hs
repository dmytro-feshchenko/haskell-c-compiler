import Text.ParserCombinators.Parsec hiding(spaces)
import System.Environment

symbol :: Parser Char
symbol = oneOf "!#$%&|*+-/:<=>?@^_~"

readExp :: String -> String
readExp input = case parse symbol "lisp" input of
  Left err -> "No match: " + show err
  Right val -> "Found value"

main :: IO ()
main = do
  putStrLn "Scheme REPL is waiting:"
  (expr:_) <- getArgs
  putStrLn (readExpr expr)
