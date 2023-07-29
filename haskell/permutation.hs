import Data.List (permutations)

allPermutations :: [a] -> [[a]]
allPermutations = permutations

main :: IO ()
main = do
    let numbers = [1, 2, 3]
    let perms = allPermutations numbers
    putStrLn "Given numbers:"
    print numbers
    putStrLn "All possible permutations:"
    mapM_ print perms
{-
*Main> main
Given numbers:
[1,2,3]
All possible permutations:
[1,2,3]
[2,1,3]
[3,2,1]
[2,3,1]
[3,1,2]
[1,3,2]

-}
