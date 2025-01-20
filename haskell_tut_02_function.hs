main = do
    putStrLn "What's your name?"
    name <- getLine
    putStrLn ("Hello " ++ name)

-- To Run this:
{- 
ghc --make haskell_tut_02_function.hs

./haskell_tut_02_function
-}