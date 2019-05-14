module Main where

myGcd a b = if remainder == 0
    then b
    else myGcd b (a `mod` b)
  where remainder = a `mod` b 

-- Case look is pattern matching
sayAmount n = case n of 
    1 -> "one"
    2 -> "two"
    n -> "a bunch"

-- pattern matching
sayAmount2 1 = "one"
sayAmount2 2 = "two"
sayAmount2 n = "a bunch"

isEmpty [] = True
isEmpty _ = False

-- Pattern matching and resursive
myLength [] = 0
myLength xs = 1 + myLength (tail xs)

main :: IO ()
main = do
  print (myGcd 20 16)
  print (sayAmount 1)
  print (sayAmount 10)
  print (sayAmount2 2)
  print (sayAmount2 10)
  print (isEmpty [])
  print (isEmpty [1,2])
  print (myLength [])
  print (myLength [1])
  print (myLength [1,2])
