-- 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597 (fibo numbers index wise)
-- 0  1  2  3  4  5  6  7   8   9   10 11   12   13   14   15   16   17  .......

fibonacci :: Int -> Int
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci (n - 1) + fibonacci (n - 2)

main = do
 putStrLn "Enter an integer:"
 n <- readLn
 let result = fibonacci n
 putStrLn ("The 5th Fibonacci number is " ++ show result)
