-- If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000.

sumMultiples :: Int -> Int
sumMultiples limit = sum [x | x <- [1..limit-1], x `mod` 3 == 0 || x `mod` 5 == 0]

main :: IO ()
main = do
  let result = sumMultiples 1000
  putStrLn $ "The sum of multiples of 3 or 5 below 1000 is: " ++ show result
