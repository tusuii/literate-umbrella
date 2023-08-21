import Text.Regex.Posix

isValidEmail :: String -> Bool
isValidEmail email = email =~ "^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}$"

main :: IO ()
main = do
    putStrLn "Enter an email address:"
    email <- getLine
    if isValidEmail email
        then putStrLn "Valid email address."
        else putStrLn "Invalid email address."
{-
Ok, one module loaded.
*Main> main
Enter an email address:
subkamble@gmail.com
Valid email address.
*Main> main
Enter an email address:
callme.anything.co.in
Invalid email address.
-}
