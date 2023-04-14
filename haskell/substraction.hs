sub = do
 putStrLn"Enter first number"
 num1 <- getLine
 putStrLn"Enter Second number"
 num2 <- getLine
 let sub = (read num1 :: Int) - (read num2 :: Int)
 putStrLn("substraction : " ++ show sum)
