cube :: Int -> Int
cube x = x * x * x

cubeSum :: Int -> Int
cubeSum n = sum [cube x | x <- [1..n]]

main :: IO ()
main = do
    putStrLn "Enter a value for n:"
    input <- getLine
    let n = read input :: Int
    let result = cubeSum n
    putStrLn $ "The sum of cubes of the first " ++ show n ++ " natural numbers is: " ++ show result

{-
Ok, one module loaded.
*Main> main
Enter a value for n:
120
The sum of cubes of the first 120 natural numbers is: 52707600
*Main> main
Enter a value for n:
20
The sum of cubes of the first 20 natural numbers is: 44100
*Main> main
Enter a value for n:
5
The sum of cubes of the first 5 natural numbers is: 225-}
