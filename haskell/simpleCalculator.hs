calculate :: Double -> Double -> Char -> Maybe Double
calculate num1 num2 operator
  | operator == '+' = Just (num1 + num2)
  | operator == '-' = Just (num1 - num2)
  | operator == '*' = Just (num1 * num2)
  | operator == '/' = if num2 /= 0 then Just (num1 / num2) else Nothing
  | otherwise = Nothing

main :: IO ()
main = do
  putStrLn "Enter the first number:"
  num1 <- readLn
  putStrLn "Enter the second number:"
  num2 <- readLn
  putStrLn "Enter the operator (+, -, *, /):"
  operator <- getLine
  let result = calculate num1 num2 (head operator)
  case result of
    Just res -> putStrLn ("Result: " ++ show res)
    Nothing -> putStrLn "Error: Division by zero or invalid operator"

{-
*Main> :l addition.hs
[1 of 1] Compiling Main             ( addition.hs, interpreted )
Ok, one module loaded.
*Main> main
Enter the first number:
12
Enter the second number:
2
Enter the operator (+, -, *, /):
+
Result: 14.0
*Main> main
Enter the first number:
20
Enter the second number:
10
Enter the operator (+, -, *, /):
-
Result: 10.0
-}
