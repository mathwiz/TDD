main = do  
    contents <- getContents  
    putStr (shortLinesOnly contents)  


shortLinesOnly :: String -> String  
shortLinesOnly input =   
    let allLines = lines input  
        shortLines = filter (\line -> length line < 20) allLines  
        result = unlines shortLines  
    in  result
