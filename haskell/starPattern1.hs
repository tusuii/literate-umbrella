main :: IO ()
main = printPattern 3

printPattern :: Int -> IO ()
printPattern n
  | n < 1     = return ()
  | otherwise = do
      printStars n
      printPattern (n - 1)

printStars :: Int -> IO ()
printStars n = putStrLn (replicate n '*')

-- *** pattern
-- **
-- *
