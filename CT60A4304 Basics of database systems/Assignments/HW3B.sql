CREATE VIEW Comments_of_comments AS
SELECT (select Username from User where User.UserID=Comments.UserID) as User, Content as Comment, FK_CommentID as "Commented on" FROM Comments
WHERE FK_CommentID IS NOT NULL
ORDER BY User