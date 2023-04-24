-- prime numbers in specified intervals
isPrime :: Int -> Bool
isPrime n = n > 1 && all (\x -> n `mod` x /= 0) [2..(n-1)]

printPrimes :: Int -> Int -> IO ()
printPrimes start end = mapM_ print $ filter isPrime [start..end]

main :: IO ()
main = do
 putStrLn "Enter start of interval: "
 start <- readLn
 putStrLn "Enter end of interval: "
 end <- readLn
 putStrLn "Prime numbers within the interval: "
 printPrimes start end
