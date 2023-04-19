--  example, 153 is an Armstrong number because 1^3 + 5^3 + 3^3 = 153.
digits :: Integral x => x -> [x]
digits 0 = []
digits n = digits (n `div` 10) ++ [n `mod` 10]

isArmstrong :: Integral x => x -> Bool
isArmstrong n = n == sum [x ^ (length digitList) | x <- digitList]
 where
   digitList = digits n
 
