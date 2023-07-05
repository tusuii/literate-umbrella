-- Function to compute quotient and remainder
quotientAndRemainder :: Integral a => a -> a -> (a, a)
quotientAndRemainder dividend divisor = (quotient, remainder)
  where
    quotient = dividend `div` divisor
    remainder = dividend `mod` divisor

main :: IO ()
main = do
  putStrLn "Enter the dividend:"
  dividend <- readLn
  putStrLn "Enter the divisor:"
  divisor <- readLn
  let (quot, rem) = quotientAndRemainder dividend divisor
  putStrLn $ "Quotient: " ++ show quot
  putStrLn $ "Remainder: " ++ show rem


{-
*Main> main
Enter the dividend:
24
Enter the divisor:
4
Quotient: 6
Remainder: 0

-}
