commonWords :: Int -> String -> String

cwords :: Int -> FilePath -> FilePath -> IO()
cwords n infile outfile
    = do {
        text <- readFile infile;
        writeFile outFile (commonWords n text);
        putStrLn "cwords done!"
    }

readFile :: FilePath -> IO String
writeFile :: FilePath -> String -> IO ()