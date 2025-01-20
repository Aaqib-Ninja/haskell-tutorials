import Data.List
import System.IO

main = do
    putStrLn "What's your name?"
    name <- getLine
    putStrLn ("Hello " ++ name)

-- To Run this:
{- 
ghc --make haskell_tut_02_function.hs

./haskell_tut_02_function
-}

-- funcName param1 param2 = operations(returned value)
addMe :: Int -> Int -> Int
addMe x y  = x + y

sumMe x y = x + y

addTuples :: (Int, Int) -> (Int, Int) -> (Int, Int)
addTuples (x, y) (x2, y2) = (x + x2, y + y2)


-- Constants
whatAge :: Int -> String
whatAge 16 = "You can drive"
whatAge 18 = "You can vote"
whatAge 21 = "You're an adult!"
-- whatAge x = "Nothing Important..."
whatAge _ = "Nothing Important..."

-- Recursion
factorial :: Int -> Int
factorial 0 = 1
factorial n = n*factorial(n-1)

-- 3 * factorial(2)
-- 2 * factorial(1)
-- 1 * factorial(0)
-- ooo --
-- 1 * 1
-- 2 * 1
-- 3 * 2

prodFact n = product [1..n]


-- Guards
isOdd :: Int -> Bool
isOdd n 
    | n `mod` 2 == 0  = False
    | otherwise = True
isEven n = n `mod` 2 == 0

-- Where with Guards --
whatGrade :: Int -> String
whatGrade age
    | (age >= 5) && (age<=6) = "Kindergarden"
    | (age >= 6) && (age <=10) = "Elementry School"
    | (age >= 10) && (age <= 14) = "Secondary School"
    | (age >= 14) && (age <= 18) = "High School"
    | otherwise = "Goto College"


batAvgRating :: Double -> Double -> String
batAvgRating hits atBats
    | avg <= 0.200 = "Terrible Batting Average"
    | avg <= 0.250 = "Average Player"
    | avg <= 0.280 = "You're doing pretty good"
    | otherwise = "You're a Superstar!"
    where avg = hits/atBats


getListItems :: [Int] -> String
getListItems [] = "Your List is Empty"
getListItems (x:[]) = "Your list starts with " ++ show x
getListItems (x:y:[]) = "Your list contains " ++ show x ++ " and " ++ show y
getListItems (x:xs) = "The 1st item is " ++ show x ++ " and the rest are: " ++ show xs


-- As --
getFirstItem :: String -> String
getFirstItem [] = "Empty String!"
getFirstItem all@(x:xs) = "The first letter in " ++ all ++ " is " ++ [x]


-- -- Higher Order Functions -- -- 
-- Map
times4 :: Int -> Int
times4 x = x * 4
listTimes4  = map times4 [1,2,3,4,5]

--
mulBy4 :: [Int] -> [Int]
mulBy4 [] = []
mulBy4 (x:xs) = times4 x : mulBy4 xs
-- [1,2,3,4] : x=1 | xs=[2,3,4]
-- [2,3,4] : x=2 | xs = [3,4]
-- [3,4] : x=3 | xs = [4]
-- [4]: x=4 | xs = []


--
areStringsEq :: [Char] -> [Char] -> Bool
areStringsEq [] [] = True
areStringsEq (x:xs) (y:ys) = x == y && areStringsEq xs ys
areStringsEq _ _ = False


-- Passing Function into a function
-- Missing 51:49

-- Returning a function
-- Missing 53:08

--Lambda
dbl1to10 = map (\x -> x*2) [1..10]

--Comparison Operators
-- < > == <= >=
-- /= -- Not Equal To
-- && || not


-- If statements
doubleEvenNumber y = 
    if (y `mod` 2 /= 0)
        then y
        else y*2

-- Case Statements
getClass :: Int -> String
getClass n = case n of 
    5 -> "Goto Kindergarden"
    6 -> "Goto Elementry"
    _ -> "Go Away"

-- https://youtu.be/02_H3LjqMr8?feature=shared&t=3446