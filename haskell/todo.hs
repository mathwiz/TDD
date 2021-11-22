-- Usage:

-- $ ./todo view todo.txt  
-- 0 - Iron the dishes  
-- 1 - Dust the dog  
-- 2 - Take salad out of the oven  
  
-- $ ./todo add todo.txt "Pick up children from drycleaners"  
  
-- $ ./todo view todo.txt  
-- 0 - Iron the dishes  
-- 1 - Dust the dog  
-- 2 - Take salad out of the oven  
-- 3 - Pick up children from drycleaners  
  
-- $ ./todo remove todo.txt 2  
  
-- $ ./todo view todo.txt  
-- 0 - Iron the dishes  
-- 1 - Dust the dog  
-- 2 - Pick up children from drycleaners  



import System.Environment   
import System.Directory  
import System.IO  
import Data.List  
  
dispatch :: [(String, [String] -> IO ())]  
dispatch =  [ ("add", add)  
            , ("view", view)  
            , ("remove", remove)  
            ]


main = do  
    (command:args) <- getArgs  
    let (Just action) = lookup command dispatch  
    action args  


add :: [String] -> IO ()  
add [fileName, todoItem] = appendFile fileName (todoItem ++ "\n")  


view :: [String] -> IO ()  
view [fileName] = do  
    contents <- readFile fileName  
    let todoTasks = lines contents  
        numberedTasks = zipWith (\n line -> show n ++ " - " ++ line) [0..] todoTasks  
    putStr $ unlines numberedTasks  


remove :: [String] -> IO ()  
remove [fileName, numberString] = do  
    handle <- openFile fileName ReadMode  
    (tempName, tempHandle) <- openTempFile "." "temp"  
    contents <- hGetContents handle  
    let number = read numberString  
        todoTasks = lines contents  
        newTodoItems = delete (todoTasks !! number) todoTasks  
    hPutStr tempHandle $ unlines newTodoItems  
    hClose handle  
    hClose tempHandle  
    removeFile fileName  
    renameFile tempName fileName  


