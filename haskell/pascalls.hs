import Control.Monad (replicateM_)

main :: IO ()
main = printPascalsTriangle 7

printPascalsTriangle :: Int -> IO ()
printPascalsTriangle n = mapM_ (printRow n) [0..n-1]

printRow :: Int -> Int -> IO ()
printRow n row = do
  let values = [binomialCoefficient row k | k <- [0..row]]
  let padding = replicate (n - row - 1) " "
  putStrLn $ unwords $ padding ++ map show values

binomialCoefficient :: Int -> Int -> Int
binomialCoefficient n k = factorial n `div` (factorial k * factorial (n - k))

factorial :: Int -> Int
factorial n = product [1..n]



{- output
            1
          1 1
        1 2 1
      1 3 3 1
    1 4 6 4 1
  1 5 10 10 5 1
1 6 15 20 15 6 1

-}
