x = 4
add1 y = y + x
add2 y = (\x -> y + x) 3

-- function add3 their ignore the arguemnt y (not impact on result of function)and use lambda argument instead
add3 y = (\y -> (\x -> y + x) 1) 2
main = do
    print(add1 2)
    print(add3 4)

    