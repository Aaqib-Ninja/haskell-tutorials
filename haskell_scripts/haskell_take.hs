import GHC.Arr (done)
takeCust :: Integer -> [a] -> [a]
-- takeCust 0 []       = []
-- takeCust n []       = []
-- takeCust 0 (x:xs)   = []
-- takeCust n (x:xs)   = x : takeCust (n-1) xs

-- another way
takeCust 0 _ = []
takeCust _ [] = []
takeCust n (x:xs) = x : takeCust (n-1) xs

main :: IO ()
main = do
    let n = 3
    let arr = [1,2,3,4,5,6,7,8,9,0]
    print (takeCust n arr)


{-
To Run this file:

-- Compile the file
ghc --make haskell_take.hs -o haskell_take

-- After compilation, run the executable:
./haskell_take
-}