isDivisible :: Int -> Int -> Bool
isDivisible num divisor = num `mod` divisor == 0

main :: IO ()
main = do
  putStrLn "Enter the number:"
  num <- readLn
  putStrLn "Enter the divisor:"
  divisor <- readLn
  let divisible = isDivisible num divisor
  if divisible
    then putStrLn (show num ++ " is divisible by " ++ show divisor)
    else putStrLn (show num ++ " is not divisible by " ++ show divisor)

{-
*Main> main
Enter the number:
2000
Enter the divisor:
28
2000 is not divisible by 28
*Main> main
Enter the number:
40
Enter the divisor:
2
40 is divisible by 2
*Main> main
Enter the number:
150
-}
