import Control.Monad
import Data.Bool
import qualified Data.Map as M

parse :: String -> (Int, [Int])
parse xs = (a, b)
  where xs' = map read . words $ xs
        a   = head xs'
        b   = tail xs'

generate :: [(Int, [Int])] -> M.Map Int [Int]
generate = foldr (\(k, v) m -> M.insertWith (++) k v m) M.empty

validate :: M.Map Int [Int] -> Bool
validate m = all (1 == ) (map length $ M.elems m)

testCase :: IO ()
testCase = do
  n  <- readLn
  xs <- replicateM n getLine
  let answer = validate $ generate (map parse xs)
  putStrLn $ bool "NO" "YES" answer

main = do
  t <- readLn
  replicateM_ t testCase
