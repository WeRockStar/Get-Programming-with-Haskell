add4 a b c d = a + b + c + d
addXto3 x = (\b c d -> add4 x b c d)
addXYto2 x y = (\c d -> add4 x  y  c  d)

getRequestUrl host apiKey resource id = host ++ "/" 
    ++ resource ++ "/" ++ id ++ "?token=" ++ apiKey

-- Partial application (Call function with fewer than the required)
exampleUrlBuilder = getRequestUrl "http://google.com"
myExampleUrlBuilder = exampleUrlBuilder "key12314"

main = do
    let mystery = add4 1
    print (mystery 2 3 4)
    print (myExampleUrlBuilder "book" "12345")