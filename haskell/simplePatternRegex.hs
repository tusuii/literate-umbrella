import System.IO (hFlush, stdout)
import Text.Regex.Posix ((=~))

main :: IO ()
main = do
  putStr "Enter a regular expression pattern: "
  hFlush stdout
  pattern <- getLine
  putStr "Enter a string to match against the pattern: "
  hFlush stdout
  input <- getLine
  let matches = input =~ pattern :: Bool
  putStrLn $ if matches then "Pattern matched!" else "Pattern did not match."


{-
*Main> main
Enter a regular expression pattern: aaa
Enter a string to match against the pattern: aabbhvjhbaaaa
Pattern matched!
-}
