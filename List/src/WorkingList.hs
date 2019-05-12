simple x = x
longList = [1 .. 1000000]
main = do 
    print (simple longList)
    -- Just fine when you compile but no more result (I tired for waiting haha)
    print (reverse [1 ..])