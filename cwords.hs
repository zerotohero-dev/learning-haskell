main = do {
    putStrLn "Take text from where:";
    infile <- getLine;
    putStrLn "How many words:";
    n <- getLine;
    putStrLn "Put the results where:";
    outfile <- getLine;
    text <- readFile infile;
    writeFile outfile ( n ++ text );
    putStrLn "cword done!";
}
