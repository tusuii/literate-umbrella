import Data.List (maximum)

allPairs :: [a] -> [(a, a)]
allPairs [] = []
allPairs (x:xs) = [(x, y) | y <- xs] ++ allPairs xs

maxDifference :: [Int] -> Int
maxDifference xs = maximum [abs (x - y) | (x, y) <- allPairs xs]

main :: IO ()
main = do
    let inputList = [4, 8, 1, 9, 5]
    let result = maxDifference inputList
    putStrLn $ "Input list: " ++ show inputList
    putStrLn $ "Maximum difference among all pairs: " ++ show result

{- output
Ok, one module loaded.
*Main> main
Input list: [4,8,1,9,5]
Maximum difference among all pairs: 8
-}
