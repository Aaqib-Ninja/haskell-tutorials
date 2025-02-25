{-
3. **Functions & Pattern Matching**
   - Define functions with `let` and `where`.
   - Use pattern matching for simple cases.

   **Program:** Write a function `signum` that returns `-1` for negative numbers, `1` for positive, and `0` otherwise.

runhaskell 3.hs
-}
signumIfElse :: Int -> Int
signumIfElse x = if x < 0 then -1 else if x > 0 then 1 else 0

signumGuard :: Int -> Int
signumGuard num
    | num < 0 = -1
    | num > 0 = 1
    | otherwise = 0

signumLet :: Int -> Int
signumLet num = 
    let result
            | num < 0 = -1
            | num > 0 = 1
            | otherwise = 0
    in result

signumWhere :: Int -> Int
signumWhere n = result
    where
        result
            | n < 0 = -1
            | n > 0 = 1
            | otherwise = 0

main :: IO()
main = do
    let num = -10
    putStrLn ("signumIfElse: " ++ show (signumIfElse num))
    putStrLn ("signumGuard: " ++ show (signumGuard num))
    putStrLn ("signumLet: " ++ show (signumLet num))
    putStrLn ("signumWhere: " ++ show (signumWhere num))
