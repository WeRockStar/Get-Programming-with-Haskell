main :: IO()
main = do
    print "Who is the email for?"
    recipient <- getLine
    print "What is the Title?"
    title <- getLine
    print "Who is Author?"
    author <- getLine
    print ("Dear " ++ recipient ++ ",\n" ++ "Thank for buying " ++ title ++ "\nthanks, \n" ++ author)