main = do
  contents <- getContents
  let xs = words contents
  let n = read $ head xs
  let xxs = map (replicate n) (tail xs)
  mapM_ putStrLn $ concat xxs
