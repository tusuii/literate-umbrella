import System.Random (randomRIO)

guessNumberGame :: Int -> IO ()
guessNumberGame secretNumber = do
  putStrLn "Guess a number:"
  guess <- readLn
  case compare guess secretNumber of
    LT -> do
      putStrLn "Too low!"
      guessNumberGame secretNumber
    GT -> do
      putStrLn "Too high!"
      guessNumberGame secretNumber
    EQ -> do
      putStrLn "Congratulations! You guessed it right!"

main :: IO ()
main = do
  putStrLn "Welcome to the Number Guessing Game!"
  secretNumber <- randomRIO (1, 100) -- Generates a random number between 1 and 100
  guessNumberGame secretNumber

{-
*Main> :l addition.hs
[1 of 1] Compiling Main             ( addition.hs, interpreted )
Ok, one module loaded.
*Main> main
Welcome to the Number Guessing Game!
Guess a number:
20
Too low!
Guess a number:
30
Too high!
Guess a number:
25
Too high!
Guess a number:
21
Too low!
Guess a number:
22
Congratulations! You guessed it right!
-}
