interchangeFirstLast :: [a] -> [a]
interchangeFirstLast [] = []
interchangeFirstLast [x] = [x]
interchangeFirstLast xs = last xs : tail (init xs) ++ [head xs]

main :: IO ()
main = do
    putStrLn "Enter your sentence: "
    input <- getLine
    let lst = words input
        result = interchangeFirstLast lst
    putStrLn $ "Interchanged list: " ++ unwords result

{- output:->
*Main> :l addition.hs
[1 of 1] Compiling Main             ( addition.hs, interpreted )
Ok, one module loaded.
*Main> main
Enter your sentence:
Panda ball cute
Interchanged list: cute ball Panda
-}
