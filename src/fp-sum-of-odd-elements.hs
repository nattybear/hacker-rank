main = do
  contents <- getContents
  let xs = lines contents
  let ys = filter odd $ map read xs
  print $ sum ys
