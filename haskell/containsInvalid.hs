isValidChar :: Char -> Bool
isValidChar c = (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z') || (c >= '0' && c <= '9')

isValidString :: String -> Bool
isValidString [] = True
isValidString (x:xs) = isValidChar x && isValidString xs

main :: IO ()
main = do
  putStrLn "Enter a string:"
  input <- getLine
  let valid = isValidString input
  if valid
    then putStrLn "The string contains only a-z, A-Z, and or 0-9 characters."
    else putStrLn "The string contains invalid characters."
