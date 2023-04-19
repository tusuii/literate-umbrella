main :: IO ()
main = do
 putStrLn "Enter an integer:"
 n <- readLn
 putStrLn("Multiplication table for " ++ show n)
 mapM_ putStrLn [show n ++ " X " ++ show x ++" = " ++ show (x*n) | x <- [1..10]]
