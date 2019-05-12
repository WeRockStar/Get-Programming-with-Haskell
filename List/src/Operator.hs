partialAppInfix = (!!) "Book"
partialAppWaitRight = ("Book" !!)
partialAppWaitLeft = (!! 3)

main = do
    -- Access at index 1 the result is 2
    print ([1,2,3] !! 1)
    print ("WeRockStar" !! 1)
    -- infix operator
    print ((!!) [1,2,3] 0)
    print (partialAppInfix 3)

    -- 
    print (partialAppWaitRight 3)
    print (partialAppWaitLeft "Book")

    -- Length
    print (length [1])
    print (length [1..10])
    -- print (length [1..])
    print (length "WeRockStar")
    print (length [(1,2), (10,2)])

    -- Reverse
    print (reverse [1, 2, 3])
    print (reverse "WeRockStar")
    print (isPalindrome "WeeW")
    print (isPalindrome "WeWe")

    -- elem function take a value  
    -- and a list and check whether the value is in the list
    print (elem 13 [1])
    print (elem 13 [1..15])
    print (elem 'W' "WeRockStar")

    -- take function is a function take a number of list 
    -- and return the first n element of the list
    print (take 5 [1..10])
    print (take 5 [1])
    print (take 2 "WeRockStar")
    -- takeLast by combine reverse and take function 
    -- work all together
    print (take 2 (reverse [1..10]))

    -- drop
    print (drop 2 [1..10])

    -- zip
    print (zip "We" "RockStar")
    print (zip [1,3,5,7] [2,4,6,8])

    -- cycle repeat that list endlessly
    print (take 5 (cycle [1]))
    print (assignToGroups 4 ["file1.txt","file2.txt","file3.txt","file4.txt","file5.txt","file6.txt","file7.txt","file8.txt"])
    -- print (cycle [1..4])

    -- subseq
    print (subseq 2 5 [1..10])
    print (subseq 2 7 "a puppy")

subseq start end list = drop start (take end list)
assignToGroups n aList = zip group aList
    where group = cycle [1..n]

isPalindrome word = word == reverse word