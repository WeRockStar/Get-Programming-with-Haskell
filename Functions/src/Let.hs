sumSquareOrSquareSum x y = let sumSquare = (x^2 + y^2) 
                               squareSum = (x + y) ^ 2

    -- Variables defined                            
    -- let x = ?
    --     y = ?
    
    -- Body of let expression behind scope of `in`
    -- Alternative to where clauses
    in 
        if sumSquare > squareSum
        then sumSquare
        else squareSum

overwrite x = let x = 2
    in 
        let x = 3
        in 
            let x = 4
            in 
                x
main = do 
    print (sumSquareOrSquareSum 2 2)
    print (overwrite 1)
    