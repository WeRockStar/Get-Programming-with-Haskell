import Data.List

author = ("Will", "Kurt")
names =[("Ian", "Curtis"), 
    ("Bernard", "Sumner"), 
    ("Peter", "Hook"), 
    ("Stephen", "Morris")]

compareLastName name1 name2 = if lastName1 > lastName2 
    then GT
    else if lastName1 < lastName2
        then LT
        else EQ
    -- fst is a function which access the fist element    
    -- snd is a function which access the second element
    where lastName1 = snd name1
          lastName2 = snd name2

-- (name is a tuple, location is a string)
addressLetter name location = nameText ++ " _ " ++ location
    where nameText = (fst name) ++ " " ++ (snd name)

main = do
    print author
    print (fst author)
    print (snd author)
    print names
    print (sort names)
    print (sortBy compareLastName names)
    print (addressLetter ("Bob","Smith") "PO Box 1234 - San Francisco, CA, 94111")

