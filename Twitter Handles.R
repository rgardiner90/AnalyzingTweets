#install.packages("twitteR")
library(twitteR)

# GREAT: http://rstatistics.net/extracting-tweets-with-r/ 

consumer_key <- "JgxYi5TVnSG6DDd4qUmePSz9X"
consumer_secret <- "aYNSmkqengscfFZDRBt2oqziM8a8St0UZ9q1QKQBKukTAOs0G9"
access_token <- "2735714393-1eA01BxfZBm4AQuH2VAAwQmH7JP0EtUH4rdCFBw"
access_secret <- "j8bCOWzbbHixidPaB24bPmTGOqHOiRRQBGZm9cqnRduQS"



setup_twitter_oauth(consumer_key, consumer_secret, access_token, access_secret) # sets up authorization



TrumpTweets <- userTimeline('@realDonaldTrump',n=1000, includeRts = TRUE) # tweets from a user
Trump_Tweets <- twListToDF(TrumpTweets)
View(Trump_Tweets)
write.csv(Trump_Tweets, "TrumpTweets4Rebekah.csv", row.names = F)

ClintonTweets <- userTimeline('@HillaryClinton',n=1000, includeRts = TRUE) # tweets from a user
Clinton_Tweets <- twListToDF(ClintonTweets)
View(Clinton_Tweets)
write.csv(Clinton_Tweets, "ClintonTweets4Rebekah.csv", row.names = F)

MacronTweets <- userTimeline('@EmmanuelMacron',n=1000, includeRts = TRUE) # tweets from a user
Macron_Tweets <- twListToDF(MacronTweets)
View(Macron_Tweets)
write.csv(Macron_Tweets, "MacronTweets4Rebekah.csv", row.names = F)

LePenTweets <- userTimeline('@MLP_officiel',n=1000, includeRts = TRUE) # tweets from a user
LePen_Tweets <- twListToDF(LePenTweets)
View(LePen_Tweets)
write.csv(LePen_Tweets, "LePenTweets4Rebekah.csv", row.names = F)
