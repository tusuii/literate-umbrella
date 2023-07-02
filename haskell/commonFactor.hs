import Data.List (nub)

commonFactors :: [Int] -> [Int]
commonFactors [] = []
commonFactors (x:xs) = foldr (gcdFactors x) [1..x] xs
  where
    gcdFactors :: Int -> Int -> [Int] -> [Int]
    gcdFactors a b factors = filter (\x -> a `mod` x == 0 && b `mod` x == 0) factors

main :: IO ()
main = do
  putStrLn "Enter numbers (separated by spaces):"
  input <- getLine
  let numbers = map read (words input) :: [Int]
  let factors = commonFactors numbers
  putStrLn "Common Factors:"
  putStrLn $ show $ nub factors

{- output
*Main> main
Enter numbers (separated by spaces):
120 240 60
Common Factors:
[1,2,3,4,5,6,10,12,15,20,30,60]
*Main> main
Enter numbers (separated by spaces):
24 46 92
Common Factors:
[1,2]
-}
