main :: IO()

toPart recipient = "Dear " ++ recipient ++ ",\n"
main = do
    print "Who is the email for?"
    recipient <- getLine
    print "What is the Title?"
    title <- getLine
    print "Who is Author?"
    author <- getLine
    print (toPart recipient ++ "Thank for buying " ++ title ++ "\nthanks, \n" ++ author)