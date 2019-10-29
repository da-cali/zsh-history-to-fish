module Zsh2fish where

import System.IO

main :: IO ()
main = do
  zshHistory <- readFile ".zsh_history"  
  let fishHistory = combine commandLines dateLines where
        commandLines = let getCommands [] = []
                           getCommands (x:xs) = drop 15 x : getCommands xs
                       in map ("- cmd: " ++) (getCommands $ lines zshHistory)
        dateLines = let getDates [] = []
                        getDates (x:xs)
                          | length x > 11 = drop 2 (take 12 x) : getDates xs
                          | otherwise = getDates xs
                    in map ("  when: " ++) (getDates $ lines zshHistory)
        combine [] _ = []
        combine _ [] = []
        combine (c:cs) (d:ds) = c : d : combine cs ds
  writeFile "fish_history" (unlines fishHistory)
  putStrLn "fish_history file created."