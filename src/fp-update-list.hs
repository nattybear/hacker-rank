main = do
  contents <- getContents
  let xs = lines contents
  let ys = map (abs . read) xs
  mapM_ print ys
