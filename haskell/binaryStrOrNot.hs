import Data.Char (isDigit)

isBinaryString :: String -> Bool
isBinaryString = all (\c -> c == '0' || c == '1')

main :: IO ()
main = do
    putStrLn "Enter a string:"
    input <- getLine
    let result = if isBinaryString input
                    then "Yes"
                    else "No"
    putStrLn result

{- output
[1 of 1] Compiling Main             ( addition.hs, interpreted )
Ok, one module loaded.
*Main> main
Enter a string:
10011
Yes
*Main> main
Enter a string:
su10110
No
-}
