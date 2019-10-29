module Fish2zsh where

import System.IO

main :: IO ()
main = do  
  fishHistory <- readFile "fish_history"  
  let zshHistory = zipWith (\c d -> ": " ++ d ++ ":0;" ++ c) commands dates where
        commands = let getCommands [] = []
                       getCommands (x:xs)
                         | length x > 2 && take 3 x == "- c" = drop 7 x : getCommands xs
                         | otherwise = getCommands xs
                   in getCommands (lines fishHistory)
        dates = let getDates [] = []
                    getDates (x:xs)
                      | length x > 2 && take 3 x == "  w" = drop 8 x : getDates xs
                      | otherwise = getDates xs
                in getDates (lines fishHistory)
  writeFile "zsh_history" (unlines zshHistory)
  putStrLn "zsh_history file created."