
-- List comprehension in Haskell
-- squareAll :: Num a => [a] -> [a]
-- squareAll xs = [ x * x | x <- xs ]

-- Same function using recurssions
squareAll :: Num a => [a] -> [a]
squareAll [] = []
squareAll (x:xs) = (x*x): squareAll xs

main :: IO ()
main = do
    let arr = [1,2,3,4,5,6,7,8,9,0]
    print (squareAll arr)

{-
To run this file:

-- Compile this file:
ghc --make haskell_list_comprehension.hs -o haskell_list_comprehension

-- After compilation, run the executable:
./haskell_list_comprehension
-}