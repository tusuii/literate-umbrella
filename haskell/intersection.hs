import Data.List (intersect)

main :: IO ()
main = do
    putStrLn "Enter the first list (space-separated elements):"
    input1 <- getLine
    let list1 = words input1

    putStrLn "Enter the second list (space-separated elements):"
    input2 <- getLine
    let list2 = words input2

    let intersectionResult = intersect list1 list2

    putStrLn "Intersection of the two lists:"
    mapM_ putStrLn intersectionResult


{-
Ok, one module loaded.
*Main> main
Enter the first list (space-separated elements):
2 5 4 9 6 3 7 5
Enter the second list (space-separated elements):
6 8 2 4 3 1
Intersection of the two lists:
2
4
6
3
-}
