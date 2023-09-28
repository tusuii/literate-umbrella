import System.Random

main :: IO ()
main = do
    -- Generate a random number between 1 and 100
    randomNumber <- randomRIO (1, 100) :: IO Int
    putStrLn $ "Random number: " ++ show randomNumber


{-
*Main> main
Random number: 20
*Main> main
Random number: 3
*Main> main
Random number: 63
*Main> main
Random number: 96
*Main> main
Random number: 81
-}
