import Data.List (unfoldr)

toBinary :: Int -> [Int]
toBinary = reverse . unfoldr (\x -> if x == 0 then Nothing else Just (x `mod` 2, x `div` 2))

main :: IO ()
main = do
  putStrLn "Enter an integer:"
  input <- getLine
  let number = read input :: Int
  let binary = toBinary number
  putStrLn ("Binary representation: " ++ show binary)
