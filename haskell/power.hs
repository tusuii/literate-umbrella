-- (x)^0 = 1
-- (x)^p = n*n    if number p is even
-- (x)^p = n*n*x  if number p is odd

power :: Int -> Int -> Int
power x 0 = 1  -- base case
power x p
 | even p = n * n    -- 2^6 = 2^3 * 2^3          even case
 | otherwise = n*n*x   -- 2^7 = 2^3 * 2^3 * 2^1  odd case
 where 
  n = power x (p `div` 2)

main :: IO ()
main = do
 putStrLn "Enter any integer:"
 x <- readLn
 putStrLn "Enter power:"
 p <- readLn
 let pow = power x p
 putStrLn ("your power is " ++ show pow)
