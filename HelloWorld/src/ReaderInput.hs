main :: IO()

toPart recipient = "Dear " ++ recipient ++ ",\n"
bodyPart title = "Thank for buying " ++ title ++ "\n"
fromPart author = "Thanks, \n" ++ author
main = do
    print "Who is the email for?"
    recipient <- getLine
    print "What is the Title?"
    title <- getLine
    print "Who is Author?"
    author <- getLine
    print (toPart recipient ++ bodyPart title ++ fromPart author)