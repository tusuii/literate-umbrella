import Text.Read (readMaybe)

to24HourFormat :: Int -> String -> String
to24HourFormat hour period
  | period == "AM" && hour == 12 = "00:00"
  | period == "AM" = formatTime hour
  | period == "PM" && hour == 12 = formatTime 12
  | period == "PM" = formatTime (hour + 12)
  | otherwise = "Invalid input"

formatTime :: Int -> String
formatTime h = if h < 10 then "0" ++ show h ++ ":00" else show h ++ ":00"

to12HourFormat :: Int -> Int -> String
to12HourFormat hour minute
  | hour == 0 = "12:" ++ formatMinute ++ " AM"
  | hour < 12 = formatTime hour ++ " AM"
  | hour == 12 = formatTime 12 ++ " PM"
  | hour > 12 = formatTime (hour - 12) ++ " PM"
  | otherwise = "Invalid input"
  where
    formatMinute = if minute < 10 then "0" ++ show minute else show minute

main :: IO ()
main = do
  putStrLn "Select conversion:"
  putStrLn "1. 12-hour to 24-hour format"
  putStrLn "2. 24-hour to 12-hour format"
  choice <- getLine
  case choice of
    "1" -> do
      putStrLn "Enter hour (1-12):"
      hourStr <- getLine
      putStrLn "Enter period (AM/PM):"
      period <- getLine
      let maybeHour = readMaybe hourStr :: Maybe Int
      case maybeHour of
        Just hour -> putStrLn $ "Converted time: " ++ to24HourFormat hour period
        Nothing -> putStrLn "Invalid input"
    "2" -> do
      putStrLn "Enter hour (0-23):"
      hourStr <- getLine
      putStrLn "Enter minute (0-59):"
      minuteStr <- getLine
      let maybeHour = readMaybe hourStr :: Maybe Int
          maybeMinute = readMaybe minuteStr :: Maybe Int
      case (maybeHour, maybeMinute) of
        (Just hour, Just minute) -> putStrLn $ "Converted time: " ++ to12HourFormat hour minute
        _ -> putStrLn "Invalid input"
    _ -> putStrLn "Invalid choice"



{-
Ok, one module loaded.
*Main> main
Select conversion:
1. 12-hour to 24-hour format
2. 24-hour to 12-hour format
2
Enter hour (0-23):
18
Enter minute (0-59):
35
Converted time: 06:00 PM
*Main> main
Select conversion:
1. 12-hour to 24-hour format
2. 24-hour to 12-hour format
1
Enter hour (1-12):
4
Enter period (AM/PM):
AM
Converted time: 04:00
-}
