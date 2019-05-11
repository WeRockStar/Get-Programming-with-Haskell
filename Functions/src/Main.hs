
calcChange owed given = if change > 0 
  then given - owed
  else 0
  where change = given - owed

f x = x ^ 3

sumSquareOrSquareSum x y = if sumSquare > squareSum 
  then sumSquare 
  else squareSum
  -- where clause
  where sumSquare = x^2 + y^2
        squareSum = (x+y) ^ 2

sumSquareOrSquareSumLambda x y = (\sumSquare squareSum -> 
  if sumSquare > squareSum 
  then sumSquare 
  else squareSum) (x^2 + x ^2) ((x+y)^2)

main = do 
  print (calcChange 2 10)
  print (f 2)
  -- Lambda functions (\x -> x) 4
  -- (\ ) is an function block
  let x = (\x -> x) 30
  print x
  -- (x y) is an function agruments and 2,2 is an function input parameters
  let summation = (\x y -> x + y) 2 2
  print summation
  print (sumSquareOrSquareSum 2 3)
  print (sumSquareOrSquareSumLambda 2 3)