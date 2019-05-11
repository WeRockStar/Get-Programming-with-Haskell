calcChange owed given = if given - owed > 0 
    then given - owed
    else 0
main = do 
    print (calcChange 2 10)
