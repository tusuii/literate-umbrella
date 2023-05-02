import Data.List (sortBy)

type Item = (Double, Double) -- (weight, value)

knapsack :: [Item] -> Double -> Double
knapsack items capacity = go 0 0 items
  where
    go weight accValue [] = accValue
    go weight accValue ((w,v):rest)
      | weight + w <= capacity = go (weight + w) (accValue + v) rest
      | otherwise = accValue + (1 - (weight + w - capacity) / w) * v

main :: IO ()
main = do
  let items = [(5, 10), (4, 40), (6, 30), (3, 50)]
      capacity = 10
      result = knapsack (sortBy (\(w1, v1) (w2, v2) -> compare (v2/w2) (v1/w1)) items) capacity
  putStrLn $ "items in knapsack is  " ++ show items
  putStrLn $ "capacity of knapsack is " ++ show capacity
  putStrLn $ "The maximum value that can be put into the knapsack is " ++ show result
