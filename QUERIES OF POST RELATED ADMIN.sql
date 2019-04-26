-->User 1 : Admin who handles post related informations-----------

-->1.View the Post table
Select *from Post

-->2.View the Rating table
Select *from Rating

-->3.View the  Post_Like table
Select *from Post_Like

-->4.View the Category table
Select *from Category

-->5.Edit the Title of a specific post
Update Post Set Post_Title = 'Christiano Ronaldo' Where Post_ID = '1'

-->6.View the total number of comments each post has
Select Comment.Post_ID, COUNT(Comment.Comment_ID)
From Comment
Group By Post_ID

-->7.View the total number of likes the 3rd most liked post has
Select Top 1 Total_Likes From
(Select Distinct Top 3 Total_Likes From Post Order By Total_Likes Desc)
Result
Order By Total_Likes

-->8.View the total number of comments the 2nd most commented post has
Select Top 1 Total_Comments From
(Select Distinct Top 2 Total_Comments From Post Order By Total_Comments Desc)
Result
Order By Total_Comments

-->9.View all the posts which has one or more comments on a specific date such as '2018-11-08'
Select * From Post 
Where Post_ID IN
(Select Post_ID From Comment Where Comment_Date = '2018-11-08')

-->10.View all the posts which has at least one comment, also arrange them in increasing order of comment_date
Select * From Post
Full Join Comment
On Post.Post_ID = Comment.Post_ID
Order By Comment_Date 

-->11.View all the posts who has the word 'Ronaldo' present in their title or in the post body.
Select Post_Title, Post_Body 
From Post 
Where Post_Body Like '%Ronaldo%' Or Post_Title Like '%Ronaldo%'

-->12.View the Posts in the decreasing order of their total comments
Select * From Post Order By Total_Comments Desc


-->13.View the Posts in the increasing order of their total likes
Select * From Post Order By Total_Likes 

-->14.View the Posts in the increasing order of their total rating
Select * From Post Order By Post_Rating

-->15.View the post which has maximum activity means post which has total likes+comment+reply+...etc more than other posts
Select Post_Title, Post_Body, Post.Total_Likes, Total_Comments, (Post.Total_Likes+Total_Comments+Reply_ID+Reply.Total_Like+Comment.Comment_ID+Comment_Like_ID) As 'Total Activity' 
From Post 
Join Reply
On Post.Post_ID = Reply.Reply_ID
Join Comment_Likes
On Post.Post_ID = Comment_Likes.Post_ID
Join Comment
On Post.Post_ID = Comment.Post_ID
Order By (Post.Total_Likes+Total_Comments+Reply_ID+Reply.Total_Like+Comment.Comment_ID+Comment_Like_ID) DESC

-->16.To select all the post with titles and body which recieved a comment on 28th,29th,30th september,2018
Select 	Post_Id,post_title,post_body from post where post_id IN	(select post_id from Comment where Comment_Date  IN('2018-9-28','2018-9-29','2018-9-30'))

-->17.To select all the post with titles and body which recieved a comment from 2016 to 2018
Select Post_Id,post_title,post_body from post where post_id IN   (select post_id from Comment where Comment_Date  Between '2016-1-1' AND '2018-12-31')

-->18.To find average rating of posts of User-Faisal
Select AVG(Rating_Star) from Rating where Post_ID IN(Select Post_Id from Post where User_ID IN(Select USER_ID from [User] where USERNAME='Faisal'))

-->19.To find max rating recieved by User-Mrgrath
Select MAx(Rating_Star) from Rating where Post_ID IN(Select Post_Id from Post where User_ID IN(Select USER_ID from [User] where USERNAME='Mcgrath'))

-->20.To find minimum rating recieved by User-Mahmud
Select Min(Rating_Star) from Rating where Post_ID IN(Select Post_Id from Post where User_ID IN(Select USER_ID from [User] where USERNAME='Mahmud'))

-->21.To truncate all the post_rating to its  integer  value
Select ROUND(Post_rating,00) from Post

-->22.To show the category which contains most post
Select *from Category where Category_ID IN (Select Top 1 Category_ID from Post group by Category_ID Order By COUNT(Post_ID) DESC)


   
-->23.To show Username,email,all that user,s Post title and body and rating of user-Mcgrath
Select USERNAME,email,Post_Title,Post_Body,Post_Rating from [User] 
Inner Join Post ON [User].User_ID=Post.User_ID where USERNAME='Mcgrath'
 
 -->24.To find the category of the Post which have the highest rating among the post's having atleast 4.5 rating
Select Top 1 Post_Title,Post_Body,Post_rating,Category_name,Category_description
from Post Right Join Category on Post.Category_ID=Category.Category_ID
where Post_Rating>=4.5 Order by Post_Rating Desc
	
-->25.To find the category of the Post which have the highest rating among the post's posted after August 2018
Select Top 1  Post_Title,Post_Body,Post_rating,Category_name,Category_description,Date
from Post Left Join Category on Post.Category_ID=Category.Category_ID
where Date >='2018-9-1' Order by Post_Rating  DESC
	
-->26.To find the Posts which recieved a rating between 4.00 to 4.5 OR 4.5 to 5	 
Select Post_Title from Post where Post_Rating>='4.00'  and Post_Rating<=4.5
UNION	
Select Post_Title from Post where Post_Rating>'4.50'  
 
-->27.To find the users who recieved a rating between 4.00 to 4.5 and from 4.5 to 5
Select User_ID from Post where Post_Rating>='4.00'  and Post_Rating<=4.5
Intersect
Select User_ID from Post where Post_Rating>'4.50'

-->28.To find first 20 alphabets of all Post's title
Select SUBSTRING(Post_Title,1,20)  from Post

-->29.To cast all the ratings as integer
Select CAST(Post_Rating as integer) from Post

-->30.To convert all the ratings as integer
Select Convert(Integer,Post_Rating) from Post

-->31.To show all categories with their description as full infromation
Select Category_Name+ ' : '+ Category_Description
as full_information from Category 

-->32.all the replies and comments except user_id 1
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

-->33.To find the post title,post body,comment of that post with the reply
--> which was posted on 28th september 2018 along with the Post's creator	
select username, Post.Post_Title,Post.Post_Body,Comment_Content,Reply_Content,Reply_Date from Post,Comment,Reply,[User]
where Reply_Date='2018-09-28' and Reply.Comment_ID=Comment.Comment_ID
and Comment.Post_ID=Post.Post_ID
and Post.User_ID=[User].User_ID


-->34.To decrease a post's rating by half which has received the lowest likes in 2016
 Update Post set Post_Rating=Post_Rating-0.5 where Post_ID IN( Select TOP 1 Post_id from Post where Date>='2016-1-1' and Date<='2016-12-31' Order By Total_Likes)   
 
-->35.To delete a post which has received the lowest rating in 2016
Delete from Post where Post_Id IN  
(Select TOP 1 Post_id from Post where Date>='2016-1-1' and Date<='2016-12-31' Order By Post_Rating) 