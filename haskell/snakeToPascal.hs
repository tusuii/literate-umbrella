import Data.Char (toUpper)

snakeToPascal :: String -> String
snakeToPascal [] = []
snakeToPascal ('_':xs) = toUpper (head xs) : snakeToPascal (tail xs)
snakeToPascal (x:xs) = x : snakeToPascal xs

main :: IO ()
main = do
    let testStr = "green_panda"
        res = snakeToPascal testStr
    putStrLn $ "The original string is : " ++ testStr
    putStrLn $ "The String after changing case : " ++ res

{-
*Main> :l addition.hs
[1 of 1] Compiling Main             ( addition.hs, interpreted )
Ok, one module loaded.
*Main> main
The original string is : green_panda
The String after changing case : greenPanda
-}
