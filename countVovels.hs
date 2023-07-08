countVowels :: String -> Int
countVowels str = length [c | c <- str, c `elem` "aeiouAEIOU"]

main :: IO ()
main = do
  putStrLn "Enter a string:"
  input <- getLine
  let numVowels = countVowels input
  putStrLn ("Number of vowels: " ++ show numVowels)

{-
*Main> main
Enter a string:
subodh
Number of vowels: 2
*Main> main
Enter a string:
what is your name
Number of vowels: 6
-}
