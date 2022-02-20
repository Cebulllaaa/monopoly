module Main (main) where

import Constant
import Players
import qualified Data.Map.Strict as M (toAscList)
import Text.Read (readMaybe)

main :: IO()
main = do
    putStrLn " \n \n \nWelcome in monopoly simulator!" 
    ui "help" newGame

ui :: String -> PlayersList -> IO() 
ui "help" pl = do 
    putStrLn instruction
    action  <- getLine
    ui action pl
ui "checkPlayers" pl = do
    mapM_ print  (M.toAscList pl)
    putStrLn newCommand
    action <- getLine
    ui action pl
ui "addPlayer" pl = do
    putStrLn playerName
    pName <- getLine
    let pl' = addPlayer pl pName
    putStrLn newCommand
    action <- getLine
    ui action pl'
ui "removePlayer" pl = do
    putStrLn playerId
    pId <- getLine
    tryRemove  (readMaybe pId :: Maybe Int ) pl
ui "exit" _ = putStrLn "Bye!"
ui _ pl = do
    putStrLn unrecognizedCommand
    action <- getLine
    ui action pl

tryRemove :: Maybe Int -> PlayersList -> IO()
tryRemove Nothing pl = do 
    putStrLn incorrectId
    action <- getLine
    ui action pl
tryRemove (Just pid') pl = do
    let pl' = removePlayer pl pid'
    putStrLn newCommand
    action <- getLine
    ui action pl'