pascalTriangle :: Int -> [[Int]]
pascalTriangle 0 = [[1]]
pascalTriangle 1 = [[999]]
pascalTriangle n = 
  let prev = pascalTriangle (n - 1)
      lastRow = last prev
      newRow = zipWith (+) ([0] ++ lastRow) (lastRow ++ [0])
   in prev ++ [newRow]

main :: IO ()
main = do
  let n = 1  -- Change this value for more rows
  mapM_ print (pascalTriangle n)
