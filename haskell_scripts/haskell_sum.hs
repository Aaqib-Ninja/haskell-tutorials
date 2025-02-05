sumCust :: Num a => [a] -> a
sumCust [] = 0
sumCust (x:xs) = x + sumCust xs
-- sumCust = foldr (+) 0 -- Another method

main :: IO ()
main = do
    let n = [1,2,3,4,5]
    print(sumCust n)

{-
To Run this file:

-- Compile 
ghc --make haskell_sum.hs -o haskell_sum

-- After compilation, run the executable:
./haskell_sum
-}
