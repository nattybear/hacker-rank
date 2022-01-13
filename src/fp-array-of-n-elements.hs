f :: Int -> [Int]
f n = [1..n]

main = do
  n <- readLn
  print $ f n
