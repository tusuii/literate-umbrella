import Data.List
rotateArrayLeft :: Int -> [a] -> [a]
rotateArrayLeft n xs = take len . drop (n `mod` len) $ cycle xs
  where
    len = length xs

main :: IO ()
main = do
    putStrLn "Enter elements of the array separated by spaces:"
    input <- getLine
    let array = map read $ words input :: [Int]

    putStrLn "Enter the number of positions to rotate left:"
    n <- readLn :: IO Int

    let rotatedArray = rotateArrayLeft n array
    putStrLn "Rotated Array:"
    print rotatedArray

{-
*Main> main
Enter elements of the array separated by spaces:
5 7 8 6
Enter the number of positions to rotate left:
2
Rotated Array:
[8,6,5,7]
-}
