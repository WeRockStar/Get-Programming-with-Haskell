-- Recursive and Pattern Matching
myLength [] = 0
myLength xs = 1 + myLength (tail xs)
-- myLength (x:xs) = 1 + myLength xs

-- take n [1,2,4]
myTake 0 [] = []
myTake 0 _ = []
myTake n (x:xs) = x:rest 
    where rest = myTake (n - 1) xs

-- cycle 
myCycle (x:xs) = x:myCycle (xs++[x])

ackermann 0 n = n + 1
ackermann m 0 = ackermann (m - 1) 1
ackermann m n = ackermann (m - 1) (ackermann m (n - 1))

collatz 1 = 1
collatz n = if even n
            then 1 + collatz (n `div` 2)
            else 1 + collatz (n*3 + 1)

-- arithmetic sequences
seque n = if n == 1
    then 3
    else seque (n - 1) + n

-- Fibonacci
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci (n-1) + fibonacci (n-2)
fibo n = if n < 2
    then n
    else fibo (n-1) + fibo (n-2)

main = do 
    print (myLength [])
    print (myLength [1])
    print (myLength [1,2,3])

    print ("Result: " ++ myTake 0 [])
    print (myTake 2 [1,2])
    -- print (myCycle [1])
    print (ackermann 3 3)

    print (collatz 9)

    print(seque 2)

    print (fibonacci 2)
    print (fibonacci 7)
    print (fibo 7)
