-- vovel or consonent
isVowel :: Char -> Bool
isVowel c = c `elem` "aeiouAEIOU"

main :: IO ()
main = do
  putStrLn "Enter a character:"
  input <- getLine
  let character = head input
  if isVowel character
    then putStrLn "The character is a vowel."
    else putStrLn "The character is a consonant."

{-
*Main> main
Enter a character:
c
The character is a consonant.

*Main> main
Enter a character:
a
The character is a vowel.

-}
