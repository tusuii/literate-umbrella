gcd' :: Integral a => a -> a -> a
gcd' a 0 = a
gcd' a b = gcd' b (a `mod` b)

-- Main function
main :: IO ()
main = do
  putStrLn "Enter the first number:"
  num1 <- readLn
  putStrLn "Enter the second number:"
  num2 <- readLn
  let result = gcd' num1 num2
  putStrLn $ "GCD: " ++ show result

{- output
*Main> main
Enter the first number:
24
Enter the second number:
48
GCD: 24
*Main> main
Enter the first number:
128
Enter the second number:
184
GCD: 8

-}
