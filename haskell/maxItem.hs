import Data.List (elemIndex)

indexOfMax :: (Ord a) => [a] -> Maybe Int
indexOfMax [] = Nothing
indexOfMax xs = elemIndex (maximum xs) xs

main :: IO ()
main = do
    putStrLn "Enter a list of numbers separated by spaces:"
    input <- getLine
    let numbers = map read (words input) :: [Int]
    case indexOfMax numbers of
        Just index -> putStrLn $ "The maximum element is at index " ++ show index
        Nothing    -> putStrLn "The list is empty."

{-
Ok, one module loaded.
*Main> main
Enter a list of numbers separated by spaces:
20 51 42 68 100 65 75 84
The maximum element is at index 4
-}
