{-
runhaskell 2_2.hs
-}

import Text.Read (readMaybe)

doArithmic :: Float -> Float -> IO()
doArithmic x y = do
    putStrLn ("Addition: " ++ show (x + y))
    putStrLn $ "Subtraction: " ++ show (x - y) -- $ is a shorthand for parentheses
    putStrLn $ "Multiplication: " ++ show (x * y)
    putStrLn $ "Division: " ++ show (x / y)

main :: IO()
main = do
    putStrLn "Enter first Number: "
    input1 <- getLine
    putStr "Enter Second Number: "
    input2 <- getLine

    case (readMaybe input1 :: Maybe Float, readMaybe input2 :: Maybe Float) of
        (Just x, Just y) -> doArithmic x y
        _ -> putStrLn "Invalid input. Please enter valid numbers."
