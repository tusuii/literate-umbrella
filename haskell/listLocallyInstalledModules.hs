import System.Process (readProcess)

getInstalledModules :: IO [String]
getInstalledModules = do
    rawOutput <- readProcess "ghc-pkg" ["list"] ""
    return $ lines rawOutput

main :: IO ()
main = do
    putStrLn "List of locally installed modules:"
    installedModules <- getInstalledModules
    mapM_ putStrLn installedModules
