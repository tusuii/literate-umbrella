sumEvenNumbers :: [Int] -> Int
sumEvenNumbers = sum . filter even

main :: IO ()
main = do
  let numbers = [1, 2, 3, 4, 5, 6,7,8,9,10] -- ecample list , you can take any example
  putStrLn $ "Sum of even numbers: " ++ show (sumEvenNumbers numbers)
