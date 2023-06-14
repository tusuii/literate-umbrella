-- Function to multiply two matrices
multiplyMatrices :: Num a => [[a]] -> [[a]] -> [[a]]
multiplyMatrices a b = [[sum $ zipWith (*) ar bc | bc <- (transpose b)] | ar <- a]

-- Function to transpose a matrix
transpose :: [[a]] -> [[a]]
transpose ([]:_) = []
transpose x = (map head x) : transpose (map tail x)

-- Function to print a matrix
printMatrix :: Show a => [[a]] -> IO ()
printMatrix mat = mapM_ (putStrLn . unwords . map show) mat

-- Function to read a matrix from user input
readMatrix :: IO [[Int]]
readMatrix = do
  putStrLn "Enter the number of rows:"
  rows <- readLn
  putStrLn "Enter the number of columns:"
  cols <- readLn
  putStrLn "Enter the elements of the matrix:"
  elements <- readElements rows cols
  return elements
  where
    readElements 0 _ = return []
    readElements r c = do
      row <- readRow c
      rest <- readElements (r - 1) c
      return (row : rest)
    readRow 0 = return []
    readRow c = do
      element <- readLn
      rest <- readRow (c - 1)
      return (element : rest)

-- Main function
main :: IO ()
main = do
  putStrLn "Enter the first matrix:"
  matrix1 <- readMatrix
  putStrLn "Enter the second matrix:"
  matrix2 <- readMatrix

  let result = multiplyMatrices matrix1 matrix2

  putStrLn "Matrix 1:"
  printMatrix matrix1

  putStrLn "Matrix 2:"
  printMatrix matrix2

  putStrLn "Matrix Multiplication:"
  printMatrix result


{- Matrix multiplication
Matrix 1:
2 3
7 5
Matrix 2:
5 2 4 1
7 7 5 4
Matrix Multiplication:
31 25 23 14
70 49 53 27

-}
