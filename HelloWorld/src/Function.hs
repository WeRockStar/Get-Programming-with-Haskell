calcChange owed given = if change > 0 
    then given - owed
    else 0
    where change = given - owed
main = do 
    print (calcChange 2 10)
