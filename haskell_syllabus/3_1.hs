{-
Pascal Triangle
1
11
121
1331
14641

runhaskell 3_1.hs
-}


pascal :: Int -> [[Int]]
pascal n = take n (iterate nextRow [1])
    where
        nextRow row = zipWith (+) ([0] ++ row) (row ++ [0])

main :: IO()
main = do
    print (pascal 5)