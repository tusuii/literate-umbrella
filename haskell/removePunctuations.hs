import Data.Char (isPunctuation)

removePunctuation :: String -> String
removePunctuation = filter (not . isPunctuation)

main :: IO ()
main = do
  putStrLn "Enter a string:"
  input <- getLine
  let result = removePunctuation input
  putStrLn ("Result: " ++ result)


{-
Prelude> :l addition.hs
[1 of 1] Compiling Main             ( addition.hs, interpreted )
Ok, one module loaded.
*Main> main
Enter a string:
heyy iam subodh!! , do you need some help?
Result: heyy iam subodh  do you need some help
-}
