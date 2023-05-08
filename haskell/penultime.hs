--penultime digit (2nd last object)
penultime :: [a] -> a

penultime x = head (tail (reverse x))

main :: IO ()
main = do
 putStrLn "Enter any list:"
 lst <- getLine
 let ans = penultime lst
 putStrLn ("penultime of list given is " ++ show ans)
  
-- penultime [6,8,1]
-- output 8
