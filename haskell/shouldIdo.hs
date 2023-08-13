import System.Random

main :: IO ()
main = do
    putStrLn "Ask a question:"
    question <- getLine
    suggestion <- randomSuggestion
    putStrLn $ "Suggestion: " ++ suggestion

randomSuggestion :: IO String
randomSuggestion = do
    randomNum <- randomRIO (0, 1) :: IO Int
    return $ if randomNum == 0 then "No" else "Yes"

{-
*Main> main
Ask a question:
do i need to code haskell?
Suggestion: Yes
*Main> main
Ask a question:
should i learn react
Suggestion: Yes
-}
