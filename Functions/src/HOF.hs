ifEvenInc n = if even n
    then n + 1
    else n

ifEvenDouble n = if even n 
    then n * 2
    else n

ifEvenSquare n = if even n 
    then n^2
    else n
-- All three are nearly identical. 
-- The only difference is in the behavior
-- of incrementing, doubling, and squaring
-- How we can solve dupliction computations with HOF?
main = do 
    print (ifEvenInc 10)
    print (ifEvenDouble 10)
    print (ifEvenSquare 2)
    
    -- inc is a function, 3 is a argument
    print (ifEven inc 3)

    --
    print (ifEvenIncHOF 3)

    -- Lambda function as arguments
    print (ifEven (\x -> x * 2) 3)


inc n = n + 1
double n = n * 2
square n = n ^ 2
-- function is a function, x is a argument
ifEven funtion x = if even x
        -- function with argument x
        then funtion x
        else x

ifEvenIncHOF n = ifEven inc n
ifEvenDoubleHOF n = ifEven double n
ifEvenSquareHOF n = ifEven square n