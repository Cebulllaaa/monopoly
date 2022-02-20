module Players (
    PlayersList,
    newGame,
    addPlayer,
    removePlayer
) where
import qualified Data.Map.Strict as M (Map, empty, size, insert, insertWith, foldl', delete, unionWith, adjust)

type PlayersList = M.Map Int String

newGame :: PlayersList
newGame = M.empty

addPlayer :: PlayersList -> String -> PlayersList
addPlayer pl pName = M.insert ((M.size pl) +1) pName pl

removePlayer :: PlayersList -> Int -> PlayersList
removePlayer pl pId = M.delete pId pl

