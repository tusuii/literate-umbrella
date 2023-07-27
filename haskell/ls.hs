import System.Directory (getCurrentDirectory, getDirectoryContents)

main :: IO ()
main = do
  currentDir <- getCurrentDirectory
  putStrLn $ "Contents of the current directory (" ++ currentDir ++ "):"
  listDirectoryContents currentDir

listDirectoryContents :: FilePath -> IO ()
listDirectoryContents path = do
  contents <- getDirectoryContents path
  let filteredContents = filter (`notElem` [".", ".."]) contents
  mapM_ putStrLn filteredContents
