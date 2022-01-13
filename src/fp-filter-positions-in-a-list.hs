main = do
  contents <- getContents
  let xs = lines contents
  let ys = zip [0..] xs
  let zs = filter (\(x, _) -> odd x) ys
  mapM_ putStrLn $ snd $ unzip zs
