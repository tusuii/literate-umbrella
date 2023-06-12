main :: IO ()
main = printPattern 4

printPattern :: Int -> IO ()
printPattern n = mapM_ printRow [1..n]

printRow :: Int -> IO ()
printRow n = putStrLn $ unwords [show (n + k) | k <- [0..n-1]]


{- number poatter 1
1
2 3
3 4 5
4 5 6 7

-}
