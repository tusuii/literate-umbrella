import Data.List (sort)

arrangeWords :: String -> String
arrangeWords = unwords . sort . words

main :: IO ()
main = do
  putStrLn "Enter a string:"
  input <- getLine
  let result = arrangeWords input
  putStrLn ("Result: " ++ result)

{-
*Main> main
Enter a string:
heyy how are you do you need some help
Result: are do help heyy how need some you you
-}
