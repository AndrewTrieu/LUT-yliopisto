CREATE VIEW Tweets_and_tags AS
SELECT (select Username from User where User.UserID=Tweet.UserID) as User, 
Tweet.Content as Tweet, group_concat(Hashtag.Content,"") as Hashtag from Tweet
INNER JOIN HashtagsInContent ON HashtagsInContent.TweetID=Tweet.TweetID
INNER JOIN Hashtag ON HashtagsInContent.HashtagID=Hashtag.HashtagID
GROUP BY User