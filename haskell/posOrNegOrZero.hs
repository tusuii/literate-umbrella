checkNumber :: Int -> String
checkNumber num
  | num > 0  = "Positive"
  | num < 0  = "Negative"
  | otherwise = "Zero"

main :: IO ()
main = do
  putStrLn "Enter a number:"
  num <- readLn
  let result = checkNumber num
  putStrLn ("The number is " ++ result)

{-
Prelude> :l addition.hs
[1 of 1] Compiling Main             ( addition.hs, interpreted )
Ok, one module loaded.
*Main> main
Enter a number:
12
The number is Positive
*Main> main
Enter a number:
-150
The number is Negative
*Main> main
Enter a number:
0
The number is Zero
-}
