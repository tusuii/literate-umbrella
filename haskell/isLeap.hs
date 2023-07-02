isLeapYear :: Int -> Bool
isLeapYear year
  | year `mod` 400 == 0 = True
  | year `mod` 100 == 0 = False
  | year `mod` 4 == 0 = True
  | otherwise = False

main :: IO ()
main = do
  putStrLn "Enter a year:"
  input <- getLine
  let year = read input :: Int
  let result = isLeapYear year
  if result
    then putStrLn $ show year ++ " is a leap year."
    else putStrLn $ show year ++ " is not a leap year."


{- output
*Main> main
Enter a year:
2023
2023 is not a leap year.
*Main> main
Enter a year:
2044
2044 is a leap year.

-}
