import System.Random
import Data.List (genericIndex)

-- Generates a random index given a range
randomIndex :: RandomGen g => (Int, Int) -> g -> (Int, g)
randomIndex range gen = randomR range gen

-- Generates a random character from a given list
randomCharacter :: RandomGen g => [a] -> g -> (a, g)
randomCharacter chars gen =
  let (index, newGen) = randomIndex (0, length chars - 1) gen
  in (genericIndex chars index, newGen)

-- Generates a random password of given length
generatePassword :: RandomGen g => Int -> g -> String
generatePassword len gen = go len gen []
  where
    go 0 _ acc = acc
    go n g acc =
      let (char, newGen) = randomCharacter allChars g
      in go (n - 1) newGen (char : acc)
    allChars = ['A'..'Z'] ++ ['a'..'z'] ++ ['0'..'9']

main :: IO ()
main = do
  gen <- newStdGen
  let passwordLength = 10 -- Change this value to adjust the length of the password
  let password = generatePassword passwordLength gen
  putStrLn password


{-
Every time you run the program it generate random password
Prelude> :l addition.hs
[1 of 1] Compiling Main             ( addition.hs, interpreted )
Ok, one module loaded.
*Main> main
maEKCNFW8W
*Main> main
yDTX9RXcFK
*Main> main
ZdVdqNtpB2
*Main> main
nSKsP3TpaZ
-}
