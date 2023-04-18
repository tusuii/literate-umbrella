-- A prime number is a whole number greater than 1 whose only factorial are 1 and itself
-- eg. 2,3,5,7,11,13,17,19,23,28,31,37,41,43,47,53, ...

isprime :: Int -> Bool  -- type declaration

isprime 0 = False
isprime 1 = False
isprime x = not (hasDivisor (x-1))
 where 
  hasDivisor :: Int -> Bool
  hasDivisor 1 = False 
  hasDivisor n = mod x n ==0 || hasDivisor(n-1)    -- recursive
  
  
main :: IO ()
main = do
 putStrLn "Enter any integer:"
 x <- readLn
 
 let prime = isprime x
 putStrLn (show prime)
