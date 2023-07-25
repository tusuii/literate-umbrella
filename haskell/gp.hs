-- formula Geometric progression (GP) : a_n=ar^n-1

geometricProgression :: Double -> Double -> Int -> [Double]
geometricProgression firstTerm commonRatio numTerms =
  take numTerms $ iterate (* commonRatio) firstTerm

main :: IO ()
main = do
  putStrLn "Enter the first term of the geometric progression (a) :"
  firstTermStr <- getLine
  let firstTerm = read firstTermStr :: Double
  
  putStrLn "Enter the common ratio (r) :"
  commonRatioStr <- getLine
  let commonRatio = read commonRatioStr :: Double
  
  putStrLn "Enter the number of terms in the progression (n) :"
  numTermsStr <- getLine
  let numTerms = read numTermsStr :: Int
  
  let progression = geometricProgression firstTerm commonRatio numTerms
  putStrLn "Geometric Progression:"
  print progression


{- output
*Main> main
Enter the first term of the geometric progression (a) :
1
Enter the common ratio (r) :
2
Enter the number of terms in the progression (n) :
5
Geometric Progression:
[1.0,2.0,4.0,8.0,16.0]
*Main> main
Enter the first term of the geometric progression (a) :
3
Enter the common ratio (r) :
2.36
Enter the number of terms in the progression (n) :
6
Geometric Progression:
[3.0,7.08,16.7088,39.432767999999996,93.06133247999999,219.62474465279996]
-}

