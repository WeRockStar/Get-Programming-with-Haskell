
main = do
  let teams = ["red", "yello", "greed", "orange", "purple"]
  print (teams)
  print ("Head: " ++ head teams)
  let t = (tail teams)
  print (t)
  -- Building List
  print (1:[2,3,4,5])
  print (1:[])
  print (1:2:3:4:[5,6])
  print (['W','e'])
  print ('W':'e':['R', 'o','c', 'k', 'S', 't', 'a', 'r'])
  -- concatenate list 
  print ([1] ++ [2,3])
  -- Generate ranges of data
  print ([1..10])
  print ([1,2.5..10])
  print ([-10 .. -1])
  print ([1 .. ])