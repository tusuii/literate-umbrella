absoluteValue :: Int -> Int

absoluteValue x
 | x >=0 = x         -- | symbols are called guards in haskell for conditions
 | otherwise = -x

main = do
 putStrLn "Enter any integer:"
 x <- readLn
 let abs = absoluteValue x
 putStrLn(show abs )

 
