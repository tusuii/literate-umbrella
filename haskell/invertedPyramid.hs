invertedStarPattern :: Int -> String
invertedStarPattern n = unlines [patternLine i n | i <- [n,n-1..1]]

patternLine :: Int -> Int -> String
patternLine i n = replicate (n - i) ' ' ++ replicate (2 * i - 1) '*'

main :: IO ()
main = do
    let n = 5 -- You can change this value to adjust the size of the pattern
    putStrLn $ invertedStarPattern n


{-
Ok, one module loaded.
*Main> main
*********
 *******
  *****
   ***
    *

-}
