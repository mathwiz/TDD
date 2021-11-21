import System.IO  
  
main = do
    discard <- putStrLn "Enter filename: "
    filename <- getLine
    withFile filename ReadMode (\ handle -> do  
        contents <- hGetContents handle     
        putStr contents)
