module Constant(
    instruction,
    unrecognizedCommand,
    newCommand,
    playerName,
    playerId,
    incorrectId
    )where

instruction :: String
instruction = "If you wanna check instructions write help"  ++ "\n"  ++
    "If you wanna add new player write addPlayer" ++ "\n" ++
    "If you wanna check player list write checkPlayers" ++ "\n" ++
    "If you wanna remove player write removePlayer" ++"\n"  ++
    "If you wanna exit write exit" ++ "\n"

unrecognizedCommand :: String
unrecognizedCommand ="You put unrecognized command if you wanna check instructions write help \n"

newCommand ::String
newCommand ="Please put new command \n"

playerName :: String
playerName ="Please put player name \n"

playerId :: String
playerId ="Please put player id \n"

incorrectId :: String
incorrectId ="It is not a number \n"