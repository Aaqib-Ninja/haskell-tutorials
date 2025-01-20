-- Comments

{-
    Multi line comments
-}

import Data.List
import System.IO

--Int -2^62 to 2^63
maxInt = maxBound :: Int 
minInt = minBound :: Int 


--Integer (Unbounded - Can be as huge as possible)


--Float (Single precision)

-- Double (precision upto 11 points)
bigFloat = 3.99999999999 + 0.00000000005
bigFloatError = 3.999999999999 + 0.000000000005


-- Bool True False
-- Char ''
-- Tuples List of multiple datatype

always5 :: Int
always5 = 5

--
sumOfNums = sum [1..1000]
addEx = 5+4
subEx = 5-4
mulEx = 5*4
divEx = 5/4
modEx = mod 5 4 --prefix operator
modEx2 = 5 `mod` 4 -- infix operator
negNumEx = 5 + (-4)

-- to find help
-- :t sqrt 

num9 = 9 :: Int
sqrtOf9 = sqrt(fromIntegral num9)


-- Built-in math functions:
piVal = pi
ePow9 = exp 9
logOf9 = log 9
squared9 = 9 ** 2
truncateVal = truncate 9.999
roundVal = round 9.999
ceilingVal = ceiling 9.999
floorVal = floor 9.999

-- Also sin, cos, tan, asin, atan, acos, sinh
-- tanh, cosh, asinh, atanh, acosh

trueAndFalse = True && False
trueOrFalse = True || False
notTrue = not(True)

-- Lists in Haskel (Need to have same dataTypes)
primeNumbers = [3,5,7,11]
morePrime = primeNumbers ++ [13, 17, 18,23, 29 ]

favNums = 2:7 : 21 : 66: []
multiList = [[3,5,7], [11,13,17]]


morePrimes2 = 2:morePrime -- Adds data at the start of the list
lenPrime = length morePrimes2 -- Stores the length of the list

revPrime = reverse morePrimes2 -- Reverses the list

isListEmpty = null morePrimes2 -- Checks if list is null
secondPrime = morePrimes2 !! 1 -- Gets the first Index

firstPrime = head morePrimes2
lastPrime = last morePrimes2
primeInit = init morePrimes2 -- Prints the whole list without last data

first3Primes = take 3 morePrimes2 -- stores first 3 data
removedPrimes = drop 3 morePrimes2 -- Removes fisrt 3 data and stores it.
is7InList = 7 `elem` morePrimes2 -- Checks if 7 is in a list

maxPrime = maximum morePrimes2
minPrime = minimum morePrimes2

newList = [2,3,5]
prodPrime = product newList -- Will multiply evey element in the list

zeroToTen = [0..10] -- [0,1,2,3,4,5,6,7,8,9,10]
evenList = [2,4..20] -- [2,4,6,8,10,12,14,16,18,20]
letterList = ['A', 'C'..'Z'] -- "ACEGIKMOQSUWY"

infinitPow10 = [10,20..] -- NOTE: Caution - will generate infinite list


many2s = take 10 (repeat 2) -- [2,2,2,2,2,2,2,2,2,2]
many3s = replicate 10 3 -- [3,3,3,3,3,3,3,3,3,3]
cycleList = take 11 (cycle[1,2,3,4,5]) -- [1,2,3,4,5,1,2,3,4,5,1]

listTimes2 = [x*2 | x <- [1..10]] -- [2,4,6,8,10,12,14,16,18,20]
primeTimes2 = [x*2 | x <- morePrimes2] -- [2,4,6,8,10,12,14,16,18,20]
listTimes3 = [x*3| x <- [1..10], x*3 <=50] -- [3,6,9,12,15,18,21,24,27,30]
divBy9N13 = [x | x <- [1..500], x `mod` 13==0, x `mod` 9==0] -- AND condition [117,234,351,468]

sortedList = sort [9,1,8,3,4,7,6]
sumOfList = zipWith (+) [1,2,3,4,5] [6,7,8,9,10]
listBiggerThan5 = filter (>5) morePrimes2
evensUpTo20 = takeWhile(<= 20) [2,4..]
multiOfListLeft = foldl (*) 1 [1,2,3,4,5]
multiOfListRight = foldr (*) 2 [1,2,3,4,5]

-- List Comprehension
pow3n = [3^n | n<- [1..10]]
multiTable = [[x*y | y <- [1..10]] | x <- [1..10]]
multiTable2 = [x* 2 | x <- [1..10]]

-- Tuples (Same as lists but can have multiple DataTypes)
randTuple = (1, "Random Tuple")

bobSmith = ("Bob Smith", 52)
bobsName = fst bobSmith
bobsAge = snd bobSmith

names = ["Bob", "Mary", "Tom"]
addresses = ["123 Main", "234 North", "567 South"]
namesNaddr = zip names addresses -- Will Create tupes [("Bob","123 Main"),("Mary","234 North"),("Tom","567 South")]

-- Can input the following commands in ghci
{- 
let num7 = 7
let getTripple x = x*3
getTripple num7
 -}
-- end ghci commands

main = do
    putStrLn "What's your name?"
    name <- getLine
    putStrLn ("Hello " ++ name)