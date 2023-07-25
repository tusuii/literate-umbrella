-- a_n = a + (n − 1) × d

arithmeticProgression :: Int -> Int -> Int -> [Int]
arithmeticProgression firstTerm commonDifference numTerms =
  take numTerms [firstTerm, firstTerm + commonDifference ..]
main :: IO ()
main = do
  putStrLn "Enter the first term of the arithmetic progression (a_1) :"
  firstTermStr <- getLine
  let firstTerm = read firstTermStr :: Int
  
  putStrLn "Enter the common difference (d) :"
  commonDifferenceStr <- getLine
  let commonDifference = read commonDifferenceStr :: Int
  
  putStrLn "Enter the number of terms in the progression (n) :"
  numTermsStr <- getLine
  let numTerms = read numTermsStr :: Int
  
  let progression = arithmeticProgression firstTerm commonDifference numTerms
  putStrLn "Arithmetic Progression (AP) :"
  print progression



{- Output
Ok, one module loaded.
*Main> main
Enter the first term of the arithmetic progression:
1
Enter the common difference:
4
Enter the number of terms in the progression:
10
Arithmetic Progression:
[1,5,9,13,17,21,25,29,33,37]
*Main> main
Enter the first term of the arithmetic progression:
2
Enter the common difference:
3
Enter the number of terms in the progression:
6
Arithmetic Progression:
[2,5,8,11,14,17]
-}

