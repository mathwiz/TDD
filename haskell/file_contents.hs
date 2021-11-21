import System.IO  
  
main = do
    discard <- putStrLn "Enter filename: "
    filename <- getLine
    handle <- openFile filename ReadMode  
    contents <- hGetContents handle  
    putStr contents  
    hClose handle
