main = do
    discard <- putStrLn "Enter 3 lines"
    rs <- sequence [getLine, getLine, getLine]  
    print rs

