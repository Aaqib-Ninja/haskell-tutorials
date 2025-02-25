{-
2. **Basic Data Types & Operators**
   - Learn about `Int`, `Float`, `Bool`, `Char`, `String`.
   - Arithmetic, logical, and comparison operators.

   **Program:** Write a program that takes two numbers as input and performs basic arithmetic operations.
-}
{-
runhaskell 2.hs
-}


addInt :: Int -> Int -> Int
addInt x y = x + y

mulFloat :: Float -> Float -> Float
mulFloat x y = x * y

boolAnd :: Bool -> Bool -> Bool
boolAnd x y = x && y

boolOr :: Bool -> Bool -> Bool
boolOr x y = x || y

main:: IO()
main =  do
    print (addInt 5 6)
    print (mulFloat 5.5 6.6)

    putStrLn "\nboolAnd:"
    print (boolAnd True False)
    print (boolAnd True True)
    print (boolAnd False False)

    putStrLn "\nboolOr:"
    print (boolOr True False)
    print (boolOr True True)
    print (boolOr False False)
