overwrite x = (\x -> 
        (\x -> 
            (\x -> x) 4
            ) 3
    )  2

main = do
    print (overwrite 2)