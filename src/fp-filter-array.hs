main = do
  contents <- getContents
  let xs = lines contents
  let n = read $ head xs :: Int
  let ys = filter (< n) $ map read (tail xs)
  mapM_ print ys
