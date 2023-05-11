-- returns number of word count in string
-- USE : wordcount "<String>"
wordcount :: String -> Int
wordcount s = length (words s)

-- returns letter count in a sentence 
-- USE : lettercount "<Sentence>"
lettercount :: String -> Int
lettercount word = length (filter isLetter word)
  where isLetter c = c `elem` ['a'..'z'] || c `elem` ['A'..'Z']

-- returns T/F if string present in sentence 
-- USE : containsword "<Word>" "<Sentence>"
containsword :: String -> String -> Bool
containsword word sentence = elem word (words sentence)
