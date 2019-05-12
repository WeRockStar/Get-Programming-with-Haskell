-- function is a function, x is a argument
ifEven funtion x = if even x
    -- function with argument x
    then funtion x
    else x

inc n = n + 1
double n = n * 2
square n = n ^ 2

-- closure
genIfEven f = (\x -> ifEven f x)

ifEvenInc = genIfEven inc


main = do
    print (genIfEven inc 9)