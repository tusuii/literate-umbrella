mx = do -- maximum of two numbers
 putStrLn"Enter first number"
 num1 <- getLine
 putStrLn"Enter Second number"
 num2 <- getLine
 let maximum = max (read num1 :: Int) (read num2 :: Int)
 putStrLn("Maximum number is : " ++ show maximum)
