-- function is a function, x is a argument
ifEven funtion x = if even x
    -- function with argument x
    then funtion x
    else x

inc n = n + 1
double n = n * 2
square n = n ^ 2

-- closure, capure f inside lambda function
genIfEven f = (\x -> ifEven f x)

ifEvenInc = genIfEven inc
mapOver x = (\x -> map (+ 1) x)
main = do
    print (genIfEven inc 9)
    