calcChange owed given = if change > 0 
    then given - owed
    else 0
    where change = given - owed

f x = x ^ 3

main = do 
    print (calcChange 2 10)
    print (f 2)
    -- Lambda functions (\x -> x) 4
    let x = (\x -> x) 30
    print x
