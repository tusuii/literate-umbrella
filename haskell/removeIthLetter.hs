removeIthLetter :: Int -> String -> String
removeIthLetter _ [] = []  -- Base case: empty string
removeIthLetter i (x:xs)
    | i == 1    = xs      -- If i is 1, skip the first character and return the rest of the string
    | otherwise = x : removeIthLetter (i - 1) xs

main :: IO ()
main = do
    let inputString = "software"
    let i = 4
    let result = removeIthLetter i inputString
    putStrLn result
    
{-
[1 of 1] Compiling Main             ( addition.hs, interpreted )
Ok, one module loaded.
*Main> main
Coputer

[1 of 1] Compiling Main             ( addition.hs, interpreted )
Ok, one module loaded.
*Main> main
sofware

-}
