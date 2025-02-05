factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n-1)


main :: IO ()
main = do
    let n = 3
    print ( factorial n )
    -- mapM_ print(factorial n)

{-
To Run this file:

-- Compile haskell_factorial.hs
ghc --make haskell_factorial.hs -o haskell_factorial

-- After compilation, run the executable:
./haskell_factorial
-}

