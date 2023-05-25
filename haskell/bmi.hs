import Text.Printf

calculateBMI :: Double -> Double -> Double
calculateBMI weight height = weight / ((height / 100) * (height / 100))

prompt :: String -> IO String
prompt text = do
  putStrLn text
  getLine

main :: IO ()
main = do
  weightStr <- prompt "Enter your weight in kilograms: "
  heightStr <- prompt "Enter your height in centimeters: "

  let weight = read weightStr :: Double
      height = read heightStr :: Double
      bmi = calculateBMI weight height

  printf "Your BMI is: %.2f\n" bmi
