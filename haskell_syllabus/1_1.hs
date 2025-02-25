-- runhaskell 1_1.hs
import Debug.Trace (trace)

factorial :: Int -> Int
factorial n
    | n <= 1 = 1
    | otherwise = trace("Computing Factorial: " ++ show n) (n * factorial (n-1))

main :: IO ()
main = print(factorial 5)