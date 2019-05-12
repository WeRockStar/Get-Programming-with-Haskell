getRequestUrl host apiKey resource id = host ++ "/" 
    ++ resource ++ "/" ++ id ++ "?token=" ++ apiKey

-- closure
getHostRequestBuilder host = (\apiKey resource id -> getRequestUrl host apiKey resource id) 

googleUrlBuilder = getHostRequestBuilder "https://google.com"
facebookUrlBuilder = getHostRequestBuilder "https://facebook.com"
mul n = (\d -> map (* n) d)
add n = (\d -> map (+ n) d)

genApiRequestBuilder hostBuilder apiKey  
    = (\resource id -> hostBuilder apiKey resource id)
myExampleUrlBuilder = genApiRequestBuilder googleUrlBuilder "123214"

main = do 
    print (getRequestUrl "https://example.com" "dsjflskjd" "books" "1")
    print (googleUrlBuilder "key3489230" "book" "1234")
    print (facebookUrlBuilder "key3489230" "book" "1234")
    print (myExampleUrlBuilder "book" "123124")
    print (mul 2 [1,1])
    print (add 10 [1, 2])
    print (map (+ 2) [1, 2, 3])
    print (sum (map (+ 2) [1, 2, 3]))
