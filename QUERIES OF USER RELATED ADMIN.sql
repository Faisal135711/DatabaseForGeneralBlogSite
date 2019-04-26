-->1.View the User table
Select *from [user]


-->2.View all the information of an user via his Username or Email
Select * From [User] Where Username = 'Faisal' OR Email = 'tahmedad@gaf.com'

-->3.View all the information of the user whose Username is 'Faisal' as well as Email is 'faisal1111@gmail.com'
Select * From [User] Where Username = 'Faisal' And Email = 'faisal1111@gmail.com'

-->4.View all the users information whose Registration_Date is not null
Select * From [User] Where Registration_Date IS NOT NULL

-->5.View the total number of users registered on each day
Select Count(User_ID), Registration_Date
From [User]
Group by Registration_Date





-->6.View how many usres has registered on October 2010
Select Count(User_ID) 
From [User]
Where DATEPART(month, Registration_Date) = 10 And DATEPART(year, Registration_Date) = 2010

-->7.View all the users who joined on a particular date
Select * From [User] Where Registration_Date = '2010-10-08'









-->8.To select all users who have registered after 2001 or who have commmented atleast three times
Select *from [User] where Registration_Date>'2001/12/31' OR   User_id IN	(Select USER_ID from Comment group by User_ID having COUNT(Comment_ID)>=3)

-->9.	To select all users who have registered after 2001 AND who have liked any post atleast two times	
Select *from [User] where Registration_Date>'2001/12/31' AND   User_id IN( Select USER_ID from Post_Like group by User_ID  having COUNT(Post_Like_ID)>=2)

--10>.To find average rating of posts of User-Faisal
Select AVG(Rating_Star) from Rating where Post_ID IN(Select Post_Id from Post where User_ID IN(Select USER_ID from [User] where USERNAME='Faisal'))

--11.>To find max rating recieved by User-Mrgrath
Select MAx(Rating_Star) from Rating where Post_ID IN(Select Post_Id from Post where User_ID IN(Select USER_ID from [User] where USERNAME='Mcgrath'))

--12.>To find minimum rating recieved by User-Mahmud
Select Min(Rating_Star) from Rating where Post_ID IN(Select Post_Id from Post where User_ID IN(Select USER_ID from [User] where USERNAME='Mahmud'))

--13.>To find total likes given by User-Faisal combining all posts
Select SUM(Total_Likes) from Post where User_ID IN(Select USER_ID from [User] where USERNAME='Faisal')

--14.>To select all usernames converted to uppercase
Select UPPER(USERNAME) from [User]

--15.>>To select all usernames converted to lowercase
Select LOWER(USERNAME) from [User]

--16.>To select the user having longest username
Select *from [User] where LEN(Username) IN (  Select MAX(Len(USERNAME)) from [User] )



 
   
-->17.To show Username,email,all that user,s Post title and body and rating of user-Mcgrath
Select USERNAME,email,Post_Title,Post_Body,Post_Rating from [User] 
Inner Join Post ON [User].User_ID=Post.User_ID where USERNAME='Mcgrath'
 

	

	




-->18.To select the Users who have Not registered in 2001
Select *from [User]
EXCEPT
Select *from [User] where Registration_Date like '2001%'
	

-->19.Select the 3 leftmost letters of each username in ascending order
Select LEFT(Username,3) from [User] order by USERNAME

-->20.Select registration month and date of each user in ascending order
Select RIGHT(Registration_Date,5) from [User] order by Registration_Date



-->21.To reverse all the user's username
Select Reverse (Username) from [USer]




-->22.all the replies and comments except user_id 1
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

-->23.To find the date of previous year of each user's registration date
Select DATEADD(YEAR,-1,Registration_Date) from [user]

-->24.To find difference of days of joining of user_id 1 and 3 
Select DATEDIFF(DAY,(Select Registration_Date from [user] where User_ID=3),(Select Registration_Date from [user] where User_ID=1))

-->25.To find the months of all user's registration date
Select DATEPART(MONTH,Registration_Date) from [user]

-->26.To find the days of all user's registration date
Select DAY(Registration_Date) from [user]

-->27.To find the post title,post body,comment of that post with the reply
--> which was posted on 28th september 2018 along with the Post's creator	
select username, Post.Post_Title,Post.Post_Body,Comment_Content,Reply_Content,Reply_Date from Post,Comment,Reply,[User]
where Reply_Date='2018-09-28' and Reply.Comment_ID=Comment.Comment_ID
and Comment.Post_ID=Post.Post_ID
and Post.User_ID=[User].User_ID





-->28.Update Email of a specific user
Update [User] Set Email = 'faisal1111@gmail.com' Where Username = 'Faisal'



-->29.Delete all the information of an user from User table
Delete From [User] Where Username = 'Tahmeed'


-->30.To add a new attribute named Date of birth in the user table
Alter table [User]
Add date_of_birth date

-->31.To change datatype of date_of_birth to datetime
Alter table [User]
Alter column date_of_birth datetime

-->32. To drop  attribute named Date of birth in the user table
Alter table [User]
Drop column date_of_birth