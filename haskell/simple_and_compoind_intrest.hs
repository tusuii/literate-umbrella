-- simple intrest = (Principal * Rate * Time)/100
-- compound intrest = Principal * (1 + Rate/100)^Time - Principal

calsimpleInterest :: Double -> Double -> Double -> Double
calsimpleInterest principal rate time = principal * rate * time

calcompoundInterest :: Double -> Double -> Double -> Double
calcompoundInterest principal rate time = principal * (1 + rate) ** time - principal

main :: IO ()
main = do
 putStrLn "Enter principal amount:"
 principalStr <- getLine
 let principal = read principalStr :: Double
  
 putStrLn "Enter rate of interest (as a decimal):"
 rateStr <- getLine
 let rate = read rateStr :: Double
  
 putStrLn "Enter time period (in years):"
 timeStr <- getLine
 let time = read timeStr :: Double
  
 let simpleInterest = calsimpleInterest principal rate time
 let compoundInterest = calcompoundInterest principal rate time
  
 putStrLn $ "Simple interest: " ++ show simpleInterest
 putStrLn $ "Compound interest: " ++ show compoundInterest
