import System.IO     
    
main = do
    discard <- putStrLn "Enter todo item to add"
    todoItem <- getLine  
    appendFile "todo.txt" (todoItem ++ "\n")

