myMap [] = []
myMap (x:xs) = ("a " ++ x):myMap xs

myMap2 f [] = []
myMap2 f (x:xs) = (f x):myMap2 f xs

squareAll [] = []
squareAll (x:xs) = x^2:squareAll xs

myProduct xs = foldl (*) 1 xs

concatAll xs = foldl (++) "" xs

main = do 

  -- map is a function takes another function and a list as arguments
  -- applies that function to each element in the list
  print (map reverse ["dog","cat", "moose"])
  print (map head ["dog","cat", "moose"])
  print (map (take 4) ["pumpkin","pie","peanut butter"])
  print (map ("a "++) ["WeRockStar"])
  print (map (+1) [1, 2, 3])
  print (map (^2) [1, 2, 3]) 
  print (myMap ["1", "2"]) 

  print (filter even [1,2,3,4])
  print (filter (\(x:xs) -> x == 'a') ["apple", "banana"])
  print (filter (\(x) -> x == "Java") ["JavaScript", "Java"])

  print (foldl (+) 0 [1,2,3,4])
  print (myProduct [2,2])

  print (concatAll ["1", "2"])
  print (foldl (^) 2 [1,2,3])
  print (foldr (^) 2 [1,2,3])
