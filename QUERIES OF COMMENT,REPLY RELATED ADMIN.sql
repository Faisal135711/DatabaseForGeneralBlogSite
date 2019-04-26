-->1.View the Comment table
Select *from Comment

-->2.View the Reply table
Select *From Reply

-->3.View the Comment_Likes table
Select *from Comment_Likes


-->4.View the Reply_Likes table
Select *from Reply_Likes



-->5.View the total number of comments each post has
Select Comment.Post_ID, COUNT(Comment.Comment_ID)
From Comment
Group By Post_ID



-->6.View all the posts which has one or more comments on a specific date such as '2018-11-08'
Select * From Post 
Where Post_ID IN
(Select Post_ID From Comment Where Comment_Date = '2018-11-08')



-->7.View all the posts which has at least one comment, also arrange them in increasing order of comment_date
Select * From Post
Full Join Comment
On Post.Post_ID = Comment.Post_ID
Order By Comment_Date 



-->8.View the post which has maximum activity means post which has total likes+comment+reply+...etc more than other posts
Select Post_Title, Post_Body, Post.Total_Likes, Total_Comments, (Post.Total_Likes+Total_Comments+Reply_ID+Reply.Total_Like+Comment.Comment_ID+Comment_Like_ID) As 'Total Activity' 
From Post 
Join Reply
On Post.Post_ID = Reply.Reply_ID
Join Comment_Likes
On Post.Post_ID = Comment_Likes.Post_ID
Join Comment
On Post.Post_ID = Comment.Post_ID
Order By (Post.Total_Likes+Total_Comments+Reply_ID+Reply.Total_Like+Comment.Comment_ID+Comment_Like_ID) DESC





-->9.To select all the post with titles and body which recieved a comment on 28th,29th,30th september,2018
Select 	Post_Id,post_title,post_body from post where post_id IN	(select post_id from Comment where Comment_Date  IN('2018-9-28','2018-9-29','2018-9-30'))

-->10.To select all the post with titles and body which recieved a comment from 2016 to 2018
Select Post_Id,post_title,post_body from post where post_id IN   (select post_id from Comment where Comment_Date  Between '2016-1-1' AND '2018-12-31')


-->11.To select all users who have registered after 2001 or who have commmented atleast three times
Select *from [User] where Registration_Date>'2001/12/31' OR   User_id IN	(Select USER_ID from Comment group by User_ID having COUNT(Comment_ID)>=3)






-->12.	To find all the replies after september 2018 
Select 	Reply_Content from Reply where Reply_Date >ALL	(Select Reply_date from Reply where Reply_date<='2018-09-30' )

-->13.To find date of any like received by a reply after august 2018
select reply_like_id, date from Reply_likes where date>ANY	(select DATE from Reply_Likes where date like '2018-09%')




-->14.all the replies and comments except user_id 1
Select Comment.User_id,Reply_ID, Reply_Content, Reply_Date, Comment_Content, Comment_Date
From Reply
Inner Join Comment
On Reply.User_ID = Comment.User_ID
Where Reply.User_ID != '1'
Union All 
Select Comment.User_id,Reply_ID, Reply_Content, Reply_Date, Comment_Content, Comment_Date
From Reply
Inner Join Comment
On Reply.User_ID = Comment.User_ID
Where Reply.User_ID != '1'




-->15.To find the post title,post body,comment of that post with the reply
--> which was posted on 28th september 2018 along with the Post's creator	
select username, Post.Post_Title,Post.Post_Body,Comment_Content,Reply_Content,Reply_Date from Post,Comment,Reply,[User]
where Reply_Date='2018-09-28' and Reply.Comment_ID=Comment.Comment_ID
and Comment.Post_ID=Post.Post_ID
and Post.User_ID=[User].User_ID



-->16.To erase the records of reply_likes keeping its structure
Delete from Reply_Likes

-->17.To erase the records of reply_likes keeping its structure and to re_initialize the table
Truncate Table Reply_likes

-->18.To erase the table reply_likes from database destroying its strcuture 
Drop Table Reply_likes
