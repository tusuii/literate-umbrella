-- A palindrome is a word, phrase, number, or other sequence of characters that reads the same forward and backward
isPalindrome :: String -> Bool
isPalindrome s = s == reverse s

main :: IO ()
main = do
 putStrLn "Enter a string:"
 input <- getLine
 let result = if isPalindrome input
                then "is a palindrome."
                else "is not a palindrome."
 putStrLn (input ++ " " ++ result)
 
-- isPalindrome "malayalam" -> True
-- isPalindrome "jack" -> False
