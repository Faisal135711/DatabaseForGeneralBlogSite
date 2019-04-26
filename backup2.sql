-->Tables

CREATE TABLE [User]
(
User_ID int IDENTITY(1,1) PRIMARY KEY,
Username varchar(50) NOT NULL,
[Password] varchar(30) NOT NULL,
Email varchar(40) NOT NULL,
Registration_Date date NOT NULL
)

CREATE TABLE Category
(
Category_ID int IDENTITY(1,1) PRIMARY KEY,
Category_Name varchar(100) NOT NULL,
Category_Description varchar(100) NOT NULL
)

CREATE TABLE Post
(
Post_ID int IDENTITY(1,1) PRIMARY KEY,
[Date] date NOT NULL,
Post_Title varchar(150) NOT NULL,
Total_Comments int NOT NULL,
Total_Likes int NOT NULL,
Post_Rating int NOT NULL,
Post_Body varchar(2000) NOT NULL,
User_ID int not null foreign key references [User](User_ID),
Category_ID int not null foreign key references Category(Category_ID)
)

CREATE TABLE Comment
(
Comment_ID int IDENTITY(1,1) PRIMARY KEY,
Comment_Date date NOT NULL,
Comment_Content varchar(200) NOT NULL,
Total_Likes int NOT NULL,
User_ID int not null foreign key references [User](User_ID), 
Post_ID int not null foreign key references Post(Post_ID),
Total_reply  int not null

)

Select *From Comment

CREATE TABLE Rating
(
Rating_ID int IDENTITY(1,1) PRIMARY KEY,
Rating_Star INT NOT NULL,
[Date] date NOT NULL,
User_ID int not null foreign key references [User](User_ID), 
Post_ID int not null foreign key references Post(Post_ID)
)

CREATE TABLE Reply
(
Reply_ID int IDENTITY(1,1) PRIMARY KEY,
Reply_Content varchar(200) NOT NULL,
Reply_Date date NOT NULL,
Total_Like int NOT NULL,
User_ID int not null foreign key references [User](User_ID), 
Post_ID int not null foreign key references Post(Post_ID),
Comment_ID int not null foreign key references Comment(Comment_ID)
)

CREATE TABLE Comment_Likes
(
Comment_Like_ID int IDENTITY(1,1) PRIMARY KEY,
[Date] date NOT NULL,
User_ID int not null foreign key references [User](User_ID), 
Post_ID int not null foreign key references Post(Post_ID),
Comment_ID int not null foreign key references Comment(Comment_ID)
)

CREATE TABLE Post_Like
(
Post_Like_ID int IDENTITY(1,1) PRIMARY KEY,
[Date] date NOT NULL,
User_ID int not null foreign key references [User](User_ID), 
Post_ID int not null foreign key references Post(Post_ID)
)

CREATE TABLE Reply_Likes
(
Reply_Like_Id int IDENTITY(1,1) PRIMARY KEY,
[Date] date NOT NULL,
User_Id int not null foreign key references [User](User_Id), 
Post_Id int not null foreign key references Post(Post_Id),
Reply_Id int not null foreign key references Reply(Reply_Id),
Comment_Id int not null foreign key references Comment(Comment_Id)
)
SELECT *FROM [User]

Insert into [User] (Username,Password,Email,Registration_Date)
	Values('Faisal','1234','faisalad@gmail.com','10/8/10')

Insert into [User] (Username,Password,Email,Registration_Date)
	Values('Faisal','1234','faisalad@gmail.com','10/8/10'),
			('Tahmeed','1233','tahmedad@gaf.com','12/11/11'),
			('Mcgrath','1313','adaf@gg.com','1/2/1'),
			('Sifat','12314','aaf@aaed.com','11/5/8'),
			('Dipta','12314ada','adada@arqr.com','10/3/4')
			
			
			
			
			
			Delete from [User]where User_ID=2
			
			
			
			
			Insert into [User] (Username,Password,Email,Registration_Date)
	Values('Faisal','1234','faisalad@gmail.com','10/8/10'),
			('Tahmeed','1233','tahmedad@gaf.com','12/11/11'),
			('Mcgrath','1313','adaf@gg.com','1/2/1'),
			('Sifat','12314','aaf@aaed.com','11/5/8'),
			('Dipta','12314ada','adada@arqr.com','10/3/4')
			
			
			Insert into [User](Username,Password,Email,Registration_Date)
			Values('Mahmud','123415464ada','aadwxca@yahoo.com','2018/12/24')
			
			
			Delete from [User] where User_ID IN(7,8,9,10,11,12)
			
				Insert into [User](Username,Password,Email,Registration_Date)
			Values('Tonmoy','1231adaf4ada','adawqea@yahoo.com','2018/11/11')
			
				Insert into [User](Username,Password,Email,Registration_Date)
			Values('Mahmud','123415464ada','aadwxca@yahoo.com','2018/12/24')
			
			
			SElect *from Category

		Insert into Category(Category_Name,Category_Description)
		Values('Transfer News','All the hottest transfer news are waiting for you.'),
		('Matches','Find out latest news about the matches in top European compettition.'),
		('International Footballl','Take a look at the happenings of international football teams.'),
		('Club News','Know about the activities of the top European clubs.'),
		('Tactics and Analysis','Understand tactics and game plans.')
		Select *from [user]
		Select *from Post
		Alter table post
		Alter column Post_rating decimal(10,2)
		
			Alter table post
			Alter column Post_Body text
				Select *from [user]
		Select *from Post
		
		Insert into Post
        Values('2018/9/28','History awaits Real Madrid','3','3','4.00','Real Madrid are one step away from writing history in the Champions League if they are able to defend their 3-0 advantage from the first leg in Turin in order to reach the semi finals of the European competition for the 29th time.','1','4')
		Insert into Post
        Values('2018/9/28','Cristiano Ronaldo hits hat-trick as Portugal deny Spain in six-goal thriller
','1','3','4.50','It was a night to remember for all concerned but not least for Cristiano Ronaldo, the Portugal captain smashing a hat-trick past Spain on Friday night to register in his fourth World Cup.','1','3')
Insert into Post
        Values('2018/11/8','Official Ronaldo Joins Juve In Record Deal','1','5','4.32','Five time Ballon dOr winner Cristiano Ronaldo has completed his sensational transfer from Real Madrid to Juventus in a club record deal for the Italian giants The Portuguese has joined the Serie A champions in a €105 million R165 billion transfer after agreeing to a four year deal worth €30 million R475 million a season becoming both Juventus record signing as well as Reals most expensive sale in the process','3','1')
		Insert into Post
        Values('2018/4/18','Juventus vs. Valencia score Champions League recap: Cristiano Ronaldo sent off in tears, but his team leaves with win','1','2','2.54','Thanks to two penalty-kick goals from Miralem Pjanic, Juventus opened its 2018-19 Champions League campaign with a 2-0 win over Valencia in Spain. ','3','2')
		Insert into Post
        Values('2018/9/28','Barcelona 1-3 Real Madrid: Cristiano Ronaldo sent off after scoring in Spanish Super Cup first leg','1','2','4.21','Real Madrid will return to the Santiago Bernabéu in the ascendancy after a Spanish Super Cup first leg that crackled in to life after half time.','4','2')
		
		Insert into Post
        Values('2018/2/12','Why Real Madrids counter attack is more complex than you think','1','2','4.88','Counte-attacking football seems simpe. Your team plays deep, wins possession, sends the ball forward and runs like hell, scoring before the opposition defense','4','5')
		Insert into Post
        Values('2016/11/18','The Fall of La Masia & Its Consequences','1','2','4.14','Before I highlight the downfall of La Masia, lets highlight the success of it. When Pep arrived, La Masia was a priority.', '5','5')
		Insert into Post
        Values('2018/3/4',' Thibaut Courtois joins Real Madrid from Chelsea','1','2','4.51','Chelsea and Real Madrid agreed terms on Wednesday for the transfer of Belgian goalkeeper Thibaut Courtois subject to the agreement of personal terms and passing a medical.','6','1')
		Insert into Post
        Values('2018/8/18','Spain 6 Croatia 0: Asensio leads destruction of World Cup finalists','1','2','4.66','Croatia suffered the biggest defeat in their history as Spain thrashed them 6-0 in Tuesdays Nations League match at Estadio Manuel Martinez Valero.
','5','3')
Insert into Post
        Values('2018/9/28','Virgil van Dijk injury update','1','2','1.44','The Netherlands captain sustained a knock to an already bruised rib during the encounter with his former club and was replaced by Joe Gomez after 55 minutes.

','6','4')
Insert into Post
        Values('2014/11/5','Late Roberto Firmino goal seals dramatic Liverpool win over Paris Saint-Germain','1','1','4.88','A stoppage-time goal from Roberto Firmino gave Liverpool a 3-2 win over Paris Saint-Germain on a dramatic Champions League night at Anfield.But substitute Firmino was the hero for Liverpool in the second minute of added time, lashing an angled strike into the corner.','13','3')
		
        Insert into Post
        Values('2018/9/28','France 4 Argentina 3: Mbappe turns on the style to dump out Messi''s men','1','1','3.55','Kylian Mbappe upstaged Lionel Messi as France recorded a 4-3 win over Argentina in a topsy-turvy last-16 clash to open the knockout stages at the World Cup.','13','3')
        Insert into Post
        Values('2018/4/1','Work on the Bernabeu to begin in 2018','1','1','3.66','While Zinedine Zidane and Co. focus on matters on the pitch, behind the scenes attention has turned to the redevelopment of the Estadio Santiago Bernabeu, with work set to begin in 2018.','14','4')
        Insert into Post
        Values('2015/11/18','Champions League: Barcelona defeats PSV Eindhoven 4-1 in Group B','1','1','2.53','LIONEL Messi pictures the Champions League ending with him hoisting the trophy and it began with him scoring a hat-trick as Barcelona put four goals past PSV Eindhoven.','14','2')
          Insert into Post
        Values('2016/11/18','As Brazil Crashes Out, the Magic Appears to Be Gone, Too','1','1','4.53','KAZAN, Russia â€” It is a fine line between respect and deference, and in the days before they came face to face with Brazil, Belgiumâ€™s players and staff did all they could to navigate it.

','3','3')
Select *from [user]
Select *from Comment
		Select *from Post


	Insert into Comment
	Values('2018/9/29','Real will win surely','5','1','1',1)
	Insert into Comment
	Values('2018/9/28','He is the best.','6','1','2',1)
	Insert into Comment
	Values('2018/11/8','Right Move','4','3','3',1)
	Insert into Comment
	Values('2018/11/8','Unfair red card','4','3','4',1)
	Insert into Comment
	Values('2018/9/28','Hattrick!','4','3','5',1)
	Insert into Comment
	Values('2018/2/14','Deadly Counter Attacking football','2','4','6',1)
	Insert into Comment
	Values('2016/11/18','End of barca','1','4','7',1)
	Insert into Comment
	Values('2018/3/6','finally','1','5','8',1)
	Insert into Comment
	Values('2018/8/18','asesnsio is too good','1','5','9',1)
	Insert into Comment
	Values('2018/9/28','liverpool is doomed','1','6','10',1)
	Insert into Comment
	Values('2014/11/6','Firmino is better than lukaku','1','6','11',1)
	Insert into Comment
	Values('2018/9/30','Mbappe will end cr7 messi era','2','13','12',5)
	Insert into Comment
	Values('2018/4/8','Hoping for the best','1','13','13',1)
	Insert into Comment
	Values('2015/11/8','Messi!','1','14','14',1)
	Insert into Comment
	Values('2016/11/8','Disappointing','1','14','15',1)
	Insert into Comment
	Values('2018/10/1','Told you so','1','3','1',1)
	Insert into Comment
	Values('2018/9/28','Bale is gonna score','1','3','1',1)
	
	Select *from [User]
	Select *from Post
	Select *from Rating
	
		Alter table rating
		Alter column rating_star decimal(10,2)
	
	
	Insert into Rating
	Values('5','2018/9/28','4','1')
	
	Insert into Rating
	Values('3','2018/9/28','3','1')
	
	Insert into Rating
	Values('5','2018/9/28','5','2')
	
	Insert into Rating
	Values('4','2018/9/28','6','2')
	
	Insert into Rating
	Values('4','2018/11/28','1','3')
	
	Insert into Rating
	Values('4.64','2018/11/28','4','3')
	
	Insert into Rating
	Values('2','2018/4/28','5','4')

	Insert into Rating
	Values('3.08','2018/4/28','6','4')
	
	Insert into Rating
	Values('4','2018/9/28','1','5')
	
	Insert into Rating
	Values('4.42','2018/9/28','3','5')
	
	Insert into Rating
	Values('4.90','2018/2/28','13','6')
	
	Insert into Rating
	Values('4.86','2018/2/18','14','6')
	
	Insert into Rating
	Values('4.14','2018/11/28','1','7')
	
	Insert into Rating
	Values('4.14','2018/11/28','3','7')
	
	Insert into Rating
	Values('4.55','2018/3/28','5','8')
	Insert into Rating
	Values('4.47','2018/3/8','13','8')
	Insert into Rating
	Values('4.66','2018/9/28','1','9')
	Insert into Rating
	Values('4.66','2018/9/28','3','9')
	Insert into Rating
	Values('1','2018/9/28','1','10')
	Insert into Rating
	Values('1.88','2018/9/28','4','10')
	Insert into Rating
	Values('5','2014/11/28','1','11')
	Insert into Rating
	Values('4.76','2014/11/28','3','11')
	Insert into Rating
	Values('3.60','2018/9/28','4','12')
	Insert into Rating
	Values('3.50','2018/9/28','5','12')
	Insert into Rating
	Values('3.66','2018/4/28','1','13')
	Insert into Rating
	Values('3.66','2018/4/28','3','13')
	Insert into Rating
	Values('2.5','2016/9/28','5','14')
	Insert into Rating
	Values('2.66','2015/11/28','6','14')
	Insert into Rating
	Values('4.80','2017/11/28','1','15')
	Insert into Rating
	Values('4.26','2016/12/28','4','15')
	
	
	Select *from [user]
Select *from Comment
		Select *from Post
	Select *from Comment
	Select *From Reply
	
	Insert into Reply
	Values('You were right','2018/9/30','5','1','1','17')
	
		Insert into Reply
	Values('Hopefully','2018/9/29','2','3','2','1')
		Insert into Reply
	Values('No way,Hazard is the best.','2018/11/28','2','1','3','2')
		Insert into Reply
	Values('Lets see how he fares in Italy','2018/11/28','2','1','4','3')
		Insert into Reply
	Values('Stupid Referee','2018/11/28','2','6','5','4')
		Insert into Reply
	Values('That Real side was something else.','2018/9/28','5','1','6','6')
		Insert into Reply
	Values('Barca will bounce back','2018/2/28','1','13','7','7')
		Insert into Reply
	Values('Yeah finally','2016/11/28','1','13','8','8')
		Insert into Reply
	Values('He should be given more minutes','2018/8/28','1','14','9','9')
		Insert into Reply
	Values('Says a Man utd fan','2018/9/28','1','3','10','10')
		Insert into Reply
	Values('Absolutely,Lukaku is pathetic','2014/11/8','1','3','11','11')
		Insert into Reply
	Values('No way,they are not touchable','2018/9/30','1','5','12','12')
		Insert into Reply
	Values('Fingers Crossed','2018/4/28','1','5','13','13')
		Insert into Reply
	Values('King Leo','2015/11/28','1','6','14','14')
		Insert into Reply
	Values('Shambolic Performance','2016/11/28','1','6','15','15')
		Insert into Reply
	Values('Yeah yeah','2018/10/2','1','13','1','16')
		Insert into Reply
	Values('No one can reach their level','2018/9/30','1','14','12','12')
		Insert into Reply
	Values('It would take 3 mbappes to overtake them','2018/9/30','1','1','12','12')
		Insert into Reply
	Values('Heck even hazard and neymar is nothing infront of them','2018/9/30','1','3','12','12')
		Insert into Reply
	Values('They are the best players of this generation','2018/9/30','1','5','12','12')
	
		
		
		Select *from [user]
		Select *from Post
		
		
	Select *from Comment
	Select *From Comment_Likes
	
	Insert Comment_Likes
	Values('2018/9/29','3','1','1')
	Insert Comment_Likes
	Values('2018/9/28','3','2','2')
	Insert Comment_Likes
	Values('2018/11/28','1','3','3')
	Insert Comment_Likes
	Values('2018/11/28','13','4','4')
	Insert Comment_Likes
	Values('2018/9/28','14','5','5')
	Insert Comment_Likes
	Values('2018/2/28','1','6','6')
	Insert Comment_Likes
	Values('2016/11/28','3','7','7')
	Insert Comment_Likes
	Values('2018/3/28','14','8','8')
	Insert Comment_Likes
	Values('2018/9/28','13','9','9')
	Insert Comment_Likes
	Values('2018/9/28','1','10','10')
	Insert Comment_Likes
	Values('2014/11/28','3','11','11')
	Insert Comment_Likes
	Values('2018/9/30','1','12','12')
	Insert Comment_Likes
	Values('2018/4/28','3','13','13')
	Insert Comment_Likes
	Values('2018/9/28','5','14','14')
	Insert Comment_Likes
	Values('2015/11/28','6','15','15')
	Insert Comment_Likes
	Values('2018/10/28','1','1','16')
	Insert Comment_Likes
	Values('2018/9/28','3','1','17')
	Insert Comment_Likes
	Values('2018/9/29','13','1','1')
	Insert Comment_Likes
	Values('2018/9/28','14','2','2')
	Insert Comment_Likes
	Values('2018/11/28','1','3','3')
	Insert Comment_Likes
	Values('2018/11/28','5','4','4')
	Insert Comment_Likes
	Values('2018/9/28','6','5','5')
	Insert Comment_Likes
	Values('2018/9/29','14','1','1')
	Insert Comment_Likes
	Values('2018/9/29','3','1','1')
	Insert Comment_Likes
	Values('2018/9/28','13','2','2')
	Insert Comment_Likes
	Values('2018/9/28','14','2','2')
	Insert Comment_Likes
	Values('2018/9/28','3','2','2')
	Insert Comment_Likes
	Values('2018/11/28','5','3','3')
	Insert Comment_Likes
	Values('2018/11/28','6','4','4')
	Insert Comment_Likes
	Values('2018/10/18','1','5','5')
	Insert Comment_Likes
	Values('2018/9/30','1','12','12')
	Insert Comment_Likes
	Values('2018/9/29','13','1','1')
	Insert Comment_Likes
	Values('2018/9/28','14','2','2')
	Insert Comment_Likes
	Values('2018/11/28','5','3','3')
	Insert Comment_Likes
	Values('2018/11/28','6','4','4')
	Insert Comment_Likes
	Values('2018/9/28','13','5','5')
	Insert Comment_Likes
	
	Values('2018/2/15','14','6','6')
	
	
		Select *from [user]
		Select *from Post
	    Select *from Post_Like
	
	Insert into Post_Like
	Values('2018/9/28','3','1')
	
	Insert into Post_Like
	Values('2018/9/28','4','2')
	
	Insert into Post_Like
	Values('2018/11/28','1','3')
	
	Insert into Post_Like
	Values('2018/4/28','4','4')
	
	Insert into Post_Like
	Values('2018/9/28','13','5')
	
	Insert into Post_Like
	Values('2018/2/28','14','6')
	
	Insert into Post_Like
	Values('2016/11/28','1','7')
	
	Insert into Post_Like
	Values('2018/3/28','3','8')
	
	Insert into Post_Like
	Values('2018/9/28','13','9')
	
	Insert into Post_Like
	Values('2018/9/28','14','10')
	
	Insert into Post_Like
	Values('2014/11/28','1','11')
	
	Insert into Post_Like
	Values('2018/9/28','3','12')
	
	Insert into Post_Like
	Values('2018/9/28','4','13')
	
	Insert into Post_Like
	Values('2015/11/28','5','14')
	
	Insert into Post_Like
	Values('2016/12/6','6','15')
	
	Insert into Post_Like
	Values('2018/9/28','13','1')
	
	Insert into Post_Like
	Values('2018/9/28','14','2')
	
	Insert into Post_Like
	Values('2018/11/28','1','3')
	
	Insert into Post_Like
	Values('2018/11/28','5','4')
	
	Insert into Post_Like
	Values('2018/9/28','6','5')
	
	Insert into Post_Like
	Values('2018/3/28','3','6')
	
	Insert into Post_Like
	Values('2017/11/28','6','7')
	
	Insert into Post_Like
	Values('2018/3/28','13','8')
	
	Insert into Post_Like
	Values('2018/8/28','14','9')
	
	Insert into Post_Like
	Values('2018/9/28','1','10')
	
	Insert into Post_Like
	Values('2018/9/28','3','1')
	
	Insert into Post_Like
	Values('2018/9/28','4','2')
	
	Insert into Post_Like
	Values('2018/11/28','13','3')
	
	Insert into Post_Like
	Values('2018/11/28','14','3')
	
	Insert into Post_Like
	Values('2018/11/28','5','3')
	
		Select *from [user]
		Select *from Post
	Select *from Comment
	Select *From Reply
	Select *from Reply_Likes
	
	Insert into Reply_Likes
	Values('2018/9/30','1','1','1','17')
	Insert into Reply_Likes
	Values('2018/9/29','3','2','2','1')
	Insert into Reply_Likes
	Values('2018/11/28','1','3','3','2')
	Insert into Reply_Likes
	Values('2018/11/28','1','4','4','3')
	Insert into Reply_Likes
	Values('2018/11/28','6','5','5','4')
	Insert into Reply_Likes
	Values('2018/9/28','1','6','6','6')
	Insert into Reply_Likes
	Values('2018/2/28','13','7','7','7')
	Insert into Reply_Likes
	Values('2016/11/28','13','8','8','8')
	Insert into Reply_Likes
	Values('2018/9/28','14','9','9','9')
	Insert into Reply_Likes
	Values('2018/9/28','3','10','10','10')
	Insert into Reply_Likes
	Values('2014/11/28','3','11','11','11')
	Insert into Reply_Likes
	Values('2018/9/30','5','12','12','12')
	Insert into Reply_Likes
	Values('2018/4/28','5','13','13','13')
	Insert into Reply_Likes
	Values('2016/11/28','6','14','14','14')
	Insert into Reply_Likes
	Values('2016/11/28','6','15','15','15')
	Insert into Reply_Likes
	Values('2018/10/28','13','1','16','16')
	Insert into Reply_Likes
	Values('2018/9/30','14','12','17','12')
	Insert into Reply_Likes
	Values('2018/12/28','1','12','18','12')
	Insert into Reply_Likes
	Values('2018/12/28','3','12','19','12')
	Insert into Reply_Likes
	Values('2018/11/28','5','12','20','12')
	Insert into Reply_Likes
	Values('2018/11/28','1','1','1','17')
	Insert into Reply_Likes
	Values('2018/11/28','3','2','2','1')
	Insert into Reply_Likes
	Values('2018/11/28','1','3','3','2')
	Insert into Reply_Likes
	Values('2018/11/28','1','4','4','3')
	Insert into Reply_Likes
	Values('2018/11/28','6','5','5','4')
	Insert into Reply_Likes
	Values('2018/9/28','1','6','6','6')
	Insert into Reply_Likes
	Values('2018/9/28','1','6','6','6')
	Insert into Reply_Likes
	Values('2018/9/28','1','6','6','6')
	Insert into Reply_Likes
	Values('2018/9/28','1','6','6','6')
	Insert into Reply_Likes
	Values('2018/11/28','1','1','1','17')
	Insert into Reply_Likes
	Values('2018/12/8','1','1','1','17')
	Insert into Reply_Likes
	Values('2018/11/8','1','1','1','17')
	
Select *from [user]
Select *from Category
	Select *from Post
Select *from Comment
	Select *from Rating
	Select *From Reply
	Select *from Comment_Likes 
	Select *from Post_Like
	Select *from Reply_Likes
	
	
	-->Queries
	
	-->	1.View All The Tables
-->1
Select *from [user]
-->2.
Select *from Category
-->3.
Select *from Post
-->4
Select *from Comment
-->5
Select *from Rating
-->6
Select *From Reply
-->7
Select *from Comment_Likes
-->8
Select *from Post_Like
-->9
Select *from Reply_Likes

-->2.Update
-->10.
Update [User] Set Email = 'faisal1111@gmail.com' Where Username = 'Faisal'

-->11.
Update Post Set Post_Title = 'Christiano Ronaldo' Where Post_Body = 'Real Madrid are one step away from writing history in the Champions League if they are able to defend their 3-0 advantage from the first leg in Turin in order to reach the semi finals of the European competition for the 29th time.'

-->3.Delete
-->12.
Delete From [User] Where Username = 'Tahmeed'

-->4. Search a user by specific username or his/her email
-->13
Select * From [User] Where username = 'Faisal' OR Email = 'tahmedad@gaf.com'

-->5.Search a user by specific username as well as his/her email
-->14
Select * From [User] Where username = 'Faisal' And Email = 'faisal1111@gmail.com'

-->6. All the users whose registraion date is not null-->
-->15
Select * From [User] Where Registration_Date IS NOT NULL

-->7.Total number of users registered on each day
-->16.
Select Count(User_ID), Registration_Date
From [User]
Group by Registration_Date

-->8.Every Post and total number of comments it has
-->17.
Select Comment.Post_ID, COUNT(Comment.Comment_ID)
From Comment
Group By Post_ID

-->9.Number of likes 3rd most liked Post has
-->18
Select *from Post
Select Top 1 Total_Likes From
(Select Distinct Top 3 Total_Likes From Post Order By Total_Likes Desc)
Result
Order By Total_Likes

-->10.Total Number of comments 2nd most commented Post has
-->19
Select Top 1 Total_Comments From
(Select Distinct Top 2 Total_Comments From Post Order By Total_Comments Desc)
Result
Order By Total_Comments

-->11.All the post info with comments on a specific date
-->20
Select * From Post 
Where Post_ID IN
(Select Post_ID From Comment Where Comment_Date = '2018-11-08')

-->12.All the post which has at least one comment , order by comment_date -->
-->21
Select * From Post
Full Join Comment
On Post.Post_ID = Comment.Post_ID
Order By Comment_Date 

-->13.total no of users who joined in October-2010
-->22
Insert into [user] values('Austin', '4444', 'what@gmail.com', '2010-10-08')

Select Count(User_ID) 
From [User]
Where DATEPART(month, Registration_Date) = 10 And DATEPART(year, Registration_Date) = 2010

-->14.Users joined on a particular date
-->23
Select * From [User] Where Registration_Date = '2010-10-08'

-->15.view all posts with a common word present in all of them
-->24
Select Post_Title, Post_Body 
From Post 
Where Post_Body Like '%Ronaldo%' Or Post_Title Like '%Ronaldo%'

-->16.list all post in ascending/descending order by total comments/likes/replies
-->25
Select * From Post Order By Total_Comments Desc
-->26
Select * From Post Order By Total_Likes 
-->27
Select * From Post Order By Post_Rating

-->17.Posts order by maximum activity(likes+comment+reply+...etc)
-->28
Select Post_Title, Post_Body, Post.Total_Likes, Total_Comments, (Post.Total_Likes+Total_Comments+Reply_ID+Reply.Total_Like+Comment.Comment_ID+Comment_Like_ID) As 'Total Activity' 
From Post 
Join Reply
On Post.Post_ID = Reply.Reply_ID
Join Comment_Likes
On Post.Post_ID = Comment_Likes.Post_ID
Join Comment
On Post.Post_ID = Comment.Post_ID
Order By (Post.Total_Likes+Total_Comments+Reply_ID+Reply.Total_Like+Comment.Comment_ID+Comment_Like_ID) DESC


 
-->29.To add a new attribute named Date of birth in the user table

Alter table [User]
Add date_of_birth date

-->30.To change datatype of date_of_birth to datetime

Alter table [User]
Alter column date_of_birth datetime

-->31. To drop  attribute named Date of birth in the user table

Alter table [User]
Drop column date_of_birth


-->32.To select all the post with titles and body which recieved a comment on 28th,29th,30th september,2018

Select 	Post_Id,post_title,post_body from post where post_id IN	(select post_id from Comment where Comment_Date  IN('2018-9-28','2018-9-29','2018-9-30'))

-->33.To select all the post with titles and body which recieved a comment from 2016 to 2018

Select Post_Id,post_title,post_body from post where post_id IN   (select post_id from Comment where Comment_Date  Between '2016-1-1' AND '2018-12-31')


-->34.To select all users who have registered after 2001 or who have commmented atleast three times
Select *from [User] where Registration_Date>'2001/12/31' OR   User_id IN	(Select USER_ID from Comment group by User_ID having COUNT(Comment_ID)>=3)

-->35.	To select all users who have registered after 2001 AND who have liked any post atleast two times	
Select *from [User] where Registration_Date>'2001/12/31' AND   User_id IN( Select USER_ID from Post_Like group by User_ID  having COUNT(Post_Like_ID)>=2)

--36>.To find average rating of posts of User-Faisal
Select AVG(Rating_Star) from Rating where Post_ID IN(Select Post_Id from Post where User_ID IN(Select USER_ID from [User] where USERNAME='Faisal'))

--37.>To find max rating recieved by User-Mrgrath

Select MAx(Rating_Star) from Rating where Post_ID IN(Select Post_Id from Post where User_ID IN(Select USER_ID from [User] where USERNAME='Mcgrath'))

--38.>To find minimum rating recieved by User-Mahmud


Select Min(Rating_Star) from Rating where Post_ID IN(Select Post_Id from Post where User_ID IN(Select USER_ID from [User] where USERNAME='Mahmud'))

--39.>To find total likes given by User-Faisal combining all posts

Select SUM(Total_Likes) from Post where User_ID IN(Select USER_ID from [User] where USERNAME='Faisal')

--40.>To select all usernames converted to uppercase
Select UPPER(USERNAME) from [User]
--41.>>To select all usernames converted to lowercase
Select LOWER(USERNAME) from [User]

--42.>To select the user having longest username
Select *from [User] where LEN(Username) IN (  Select MAX(Len(USERNAME)) from [User] )

--43.>To truncate all the post_rating to its  integer  value
Select ROUND(Post_rating,00) from Post

--44.>To show the category which contains most post
Select *from Category where Category_ID IN (Select Top 1 Category_ID from Post group by Category_ID Order By COUNT(Post_ID) DESC)

-->45.To decrease a post's rating by half which has received the lowest likes in 2016

  
 Update Post set Post_Rating=Post_Rating-0.5 where Post_ID IN( Select TOP 1 Post_id from Post where Date>='2016-1-1' and Date<='2016-12-31' Order By Total_Likes)   
 
 -->46. To delete a post which has received the lowest rating in 2016
 
 
   Delete from Post where Post_Id IN  
   (Select TOP 1 Post_id from Post where Date>='2016-1-1' and Date<='2016-12-31' Order By Post_Rating) 
   
   
 -->47.  To show Username,email,all that user,s Post title and body and rating of user-Mcgrath
 
 Select USERNAME,email,Post_Title,Post_Body,Post_Rating from [User] 
 
 Inner Join Post ON [User].User_ID=Post.User_ID where USERNAME='Mcgrath'
 
 
 -->48.To find the category of the Post which have the highest rating among the post's having atleast 4.5 rating
 
	Select Top 1 Post_Title,Post_Body,Post_rating,Category_name,Category_description
	from Post Right Join Category on Post.Category_ID=Category.Category_ID
	where Post_Rating>=4.5 Order by Post_Rating Desc
	
	
--49>	To find the category of the Post which have the highest rating among the post's posted after August 2018
	Select Top 1  Post_Title,Post_Body,Post_rating,Category_name,Category_description,Date
	from Post Left Join Category on Post.Category_ID=Category.Category_ID
	where Date >='2018-9-1' Order by Post_Rating  DESC
	
-->50.	To erase the records of reply_likes keeping its structure
Delete from Reply_Likes

-->51.	To erase the records of reply_likes keeping its structure and to re_initialize the table
Truncate Table Reply_likes

-->52. To erase the table reply_likes from database destroying its strcuture 
Drop Table Reply_likes


--53.> To find the Posts which recieved a rating between 4.00 to 4.5 OR 4.5 to 5

	 
	 Select Post_Title from Post where Post_Rating>='4.00'  and Post_Rating<=4.5
	 
	UNION
		
	 Select Post_Title from Post where Post_Rating>'4.50'  
	 
	 
-->54.To find the users who recieved a rating between 4.00 to 4.5 and from 4.5 to 5

 
	 Select User_ID from Post where Post_Rating>='4.00'  and Post_Rating<=4.5
	 
	Intersect
		
	 Select User_ID from Post where Post_Rating>'4.50'


-->55.To select the Users who have Not registered in 2001

	Select *from [User]
	
	EXCEPT
	
	Select *from [User] where Registration_Date like '2001%'
	
-->56.	To find all the replies after september 2018 




Select 	Reply_Content from Reply where Reply_Date >ALL	(	Select Reply_date from Reply where Reply_date<='2018-09-30' )


-->57.To find date of any like received by a reply after august 2018


select reply_like_id, date from Reply_likes where date>ANY	(select DATE from Reply_Likes where date like '2018-09%')

-->58.Select the 3 leftmost letters of each username in ascending order

Select LEFT(Username,3) from [User] order by USERNAME

-->59.Select registration month and date of each user in ascending order

Select RIGHT(Registration_Date,5) from [User] order by Registration_Date

-->60.To find first 20 alphabets of all Post's title

Select SUBSTRING(Post_Title,1,20)  from Post

-->61.To reverse all the user's username

Select Reverse (Username) from [USer]

-->62.To cast all the ratings as integer

Select CAST(Post_Rating as integer) from Post

-->63.To convert all the ratings as integer

Select Convert(Integer,Post_Rating) from Post

-->64.To show all categories with their description as full infromation
Select Category_Name+ ' : '+ Category_Description
as full_information from Category 

-->65.all the replies and comments except user_id 1

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

-->66.To find the date of previous year of each user's registration date
Select DATEADD(YEAR,-1,Registration_Date) from [user]

-->67.To find difference of days of joining of user_id 1 and 3 
Select DATEDIFF(DAY,(Select Registration_Date from [user] where User_ID=3),(Select Registration_Date from [user] where User_ID=1))

-->68.To find the months of all user's registration date
Select DATEPART(MONTH,Registration_Date) from [user]

-->69.To find the days of all user's registration date
Select DAY(Registration_Date) from [user]

-->70.To find the post title,post body,comment of that post with the reply
--> which was posted on 28th september 2018 along with the Post's creator	



select username, Post.Post_Title,Post.Post_Body,Comment_Content,Reply_Content,Reply_Date from Post,Comment,Reply,[User]
where Reply_Date='2018-09-28' and Reply.Comment_ID=Comment.Comment_ID
and Comment.Post_ID=Post.Post_ID
and Post.User_ID=[User].User_ID









-->Queries
	
-->1.View the User table
Select *from [user]

-->2.View the Category table
Select *from Category

-->3.View the Post table
Select *from Post

-->4.View the Comment table
Select *from Comment

-->5.View the Rating table
Select *from Rating

-->6.View the Reply table
Select *From Reply

-->7.View the Comment_Likes table
Select *from Comment_Likes

-->8.View the  Post_Like table
Select *from Post_Like

-->9.View the Reply_Likes table
Select *from Reply_Likes

-->10.Update Email of a specific user
Update [User] Set Email = 'faisal1111@gmail.com' Where Username = 'Faisal'

-->11.Edit the Title of a specific post
Update Post Set Post_Title = 'Christiano Ronaldo' Where Post_ID = '1'

-->12.Delete all the information of an user from User table
Delete From [User] Where Username = 'Tahmeed'

-->13.View all the information of an user via his Username or Email
Select * From [User] Where Username = 'Faisal' OR Email = 'tahmedad@gaf.com'

-->14.View all the information of the user whose Username is 'Faisal' as well as Email is 'faisal1111@gmail.com'
Select * From [User] Where Username = 'Faisal' And Email = 'faisal1111@gmail.com'

-->15.View all the users information whose Registration_Date is not null
Select * From [User] Where Registration_Date IS NOT NULL

-->16.View the total number of users registered on each day
Select Count(User_ID), Registration_Date
From [User]
Group by Registration_Date

-->17.View the total number of comments each post has
Select Comment.Post_ID, COUNT(Comment.Comment_ID)
From Comment
Group By Post_ID

-->18.View the total number of likes the 3rd most liked post has
Select *from Post
Select Top 1 Total_Likes From
(Select Distinct Top 3 Total_Likes From Post Order By Total_Likes Desc)
Result
Order By Total_Likes

-->19.View the total number of comments the 2nd most commented post has
Select Top 1 Total_Comments From
(Select Distinct Top 2 Total_Comments From Post Order By Total_Comments Desc)
Result
Order By Total_Comments

-->20.View all the posts which has one or more comments on a specific date such as '2018-11-08'
Select * From Post 
Where Post_ID IN
(Select Post_ID From Comment Where Comment_Date = '2018-11-08')

-->21.View all the posts which has at least one comment, also arrange them in increasing order of comment_date
Select * From Post
Full Join Comment
On Post.Post_ID = Comment.Post_ID
Order By Comment_Date 

-->22.View how many usres has registered on October 2010
Select Count(User_ID) 
From [User]
Where DATEPART(month, Registration_Date) = 10 And DATEPART(year, Registration_Date) = 2010

-->23.View all the users who joined on a particular date
Select * From [User] Where Registration_Date = '2010-10-08'

-->24.View all the posts who has the word 'Ronaldo' present in their title or in the post body.
Select Post_Title, Post_Body 
From Post 
Where Post_Body Like '%Ronaldo%' Or Post_Title Like '%Ronaldo%'


-->25.View the Posts in the decreasing order of their total comments
Select * From Post Order By Total_Comments Desc

-->26.View the Posts in the increasing order of their total likes
Select * From Post Order By Total_Likes 

-->27.View the Posts in the increasing order of their total rating
Select * From Post Order By Post_Rating

-->28.View the post which has maximum activity means post which has total likes+comment+reply+...etc more than other posts
Select Post_Title, Post_Body, Post.Total_Likes, Total_Comments, (Post.Total_Likes+Total_Comments+Reply_ID+Reply.Total_Like+Comment.Comment_ID+Comment_Like_ID) As 'Total Activity' 
From Post 
Join Reply
On Post.Post_ID = Reply.Reply_ID
Join Comment_Likes
On Post.Post_ID = Comment_Likes.Post_ID
Join Comment
On Post.Post_ID = Comment.Post_ID
Order By (Post.Total_Likes+Total_Comments+Reply_ID+Reply.Total_Like+Comment.Comment_ID+Comment_Like_ID) DESC

-->29.To add a new attribute named Date of birth in the user table
Alter table [User]
Add date_of_birth date

-->30.To change datatype of date_of_birth to datetime
Alter table [User]
Alter column date_of_birth datetime

-->31. To drop  attribute named Date of birth in the user table
Alter table [User]
Drop column date_of_birth


-->32.To select all the post with titles and body which recieved a comment on 28th,29th,30th september,2018
Select 	Post_Id,post_title,post_body from post where post_id IN	(select post_id from Comment where Comment_Date  IN('2018-9-28','2018-9-29','2018-9-30'))

-->33.To select all the post with titles and body which recieved a comment from 2016 to 2018
Select Post_Id,post_title,post_body from post where post_id IN   (select post_id from Comment where Comment_Date  Between '2016-1-1' AND '2018-12-31')


-->34.To select all users who have registered after 2001 or who have commmented atleast three times
Select *from [User] where Registration_Date>'2001/12/31' OR   User_id IN	(Select USER_ID from Comment group by User_ID having COUNT(Comment_ID)>=3)

-->35.	To select all users who have registered after 2001 AND who have liked any post atleast two times	
Select *from [User] where Registration_Date>'2001/12/31' AND   User_id IN( Select USER_ID from Post_Like group by User_ID  having COUNT(Post_Like_ID)>=2)

--36>.To find average rating of posts of User-Faisal
Select AVG(Rating_Star) from Rating where Post_ID IN(Select Post_Id from Post where User_ID IN(Select USER_ID from [User] where USERNAME='Faisal'))

--37.>To find max rating recieved by User-Mrgrath
Select MAx(Rating_Star) from Rating where Post_ID IN(Select Post_Id from Post where User_ID IN(Select USER_ID from [User] where USERNAME='Mcgrath'))

--38.>To find minimum rating recieved by User-Mahmud
Select Min(Rating_Star) from Rating where Post_ID IN(Select Post_Id from Post where User_ID IN(Select USER_ID from [User] where USERNAME='Mahmud'))

--39.>To find total likes given by User-Faisal combining all posts
Select SUM(Total_Likes) from Post where User_ID IN(Select USER_ID from [User] where USERNAME='Faisal')

--40.>To select all usernames converted to uppercase
Select UPPER(USERNAME) from [User]

--41.>>To select all usernames converted to lowercase
Select LOWER(USERNAME) from [User]

--42.>To select the user having longest username
Select *from [User] where LEN(Username) IN (  Select MAX(Len(USERNAME)) from [User] )

--43.>To truncate all the post_rating to its  integer  value
Select ROUND(Post_rating,00) from Post

--44.>To show the category which contains most post
Select *from Category where Category_ID IN (Select Top 1 Category_ID from Post group by Category_ID Order By COUNT(Post_ID) DESC)

-->45.To decrease a post's rating by half which has received the lowest likes in 2016
 Update Post set Post_Rating=Post_Rating-0.5 where Post_ID IN( Select TOP 1 Post_id from Post where Date>='2016-1-1' and Date<='2016-12-31' Order By Total_Likes)   
 
-->46.To delete a post which has received the lowest rating in 2016
Delete from Post where Post_Id IN  
(Select TOP 1 Post_id from Post where Date>='2016-1-1' and Date<='2016-12-31' Order By Post_Rating) 
   
-->47.To show Username,email,all that user,s Post title and body and rating of user-Mcgrath
Select USERNAME,email,Post_Title,Post_Body,Post_Rating from [User] 
Inner Join Post ON [User].User_ID=Post.User_ID where USERNAME='Mcgrath'
 
 -->48.To find the category of the Post which have the highest rating among the post's having atleast 4.5 rating
Select Top 1 Post_Title,Post_Body,Post_rating,Category_name,Category_description
from Post Right Join Category on Post.Category_ID=Category.Category_ID
where Post_Rating>=4.5 Order by Post_Rating Desc
	
-->49.To find the category of the Post which have the highest rating among the post's posted after August 2018
Select Top 1  Post_Title,Post_Body,Post_rating,Category_name,Category_description,Date
from Post Left Join Category on Post.Category_ID=Category.Category_ID
where Date >='2018-9-1' Order by Post_Rating  DESC
	
-->50.To erase the records of reply_likes keeping its structure
Delete from Reply_Likes

-->51.To erase the records of reply_likes keeping its structure and to re_initialize the table
Truncate Table Reply_likes

-->52.To erase the table reply_likes from database destroying its strcuture 
Drop Table Reply_likes

-->53.To find the Posts which recieved a rating between 4.00 to 4.5 OR 4.5 to 5	 
Select Post_Title from Post where Post_Rating>='4.00'  and Post_Rating<=4.5
UNION	
Select Post_Title from Post where Post_Rating>'4.50'  
 
-->54.To find the users who recieved a rating between 4.00 to 4.5 and from 4.5 to 5
Select User_ID from Post where Post_Rating>='4.00'  and Post_Rating<=4.5
Intersect
Select User_ID from Post where Post_Rating>'4.50'

-->55.To select the Users who have Not registered in 2001
Select *from [User]
EXCEPT
Select *from [User] where Registration_Date like '2001%'
	
-->56.	To find all the replies after september 2018 
Select 	Reply_Content from Reply where Reply_Date >ALL	(Select Reply_date from Reply where Reply_date<='2018-09-30' )

-->57.To find date of any like received by a reply after august 2018
select reply_like_id, date from Reply_likes where date>ANY	(select DATE from Reply_Likes where date like '2018-09%')

-->58.Select the 3 leftmost letters of each username in ascending order
Select LEFT(Username,3) from [User] order by USERNAME

-->59.Select registration month and date of each user in ascending order
Select RIGHT(Registration_Date,5) from [User] order by Registration_Date

-->60.To find first 20 alphabets of all Post's title
Select SUBSTRING(Post_Title,1,20)  from Post

-->61.To reverse all the user's username
Select Reverse (Username) from [USer]

-->62.To cast all the ratings as integer
Select CAST(Post_Rating as integer) from Post

-->63.To convert all the ratings as integer
Select Convert(Integer,Post_Rating) from Post

-->64.To show all categories with their description as full infromation
Select Category_Name+ ' : '+ Category_Description
as full_information from Category 

-->65.all the replies and comments except user_id 1
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

-->66.To find the date of previous year of each user's registration date
Select DATEADD(YEAR,-1,Registration_Date) from [user]

-->67.To find difference of days of joining of user_id 1 and 3 
Select DATEDIFF(DAY,(Select Registration_Date from [user] where User_ID=3),(Select Registration_Date from [user] where User_ID=1))

-->68.To find the months of all user's registration date
Select DATEPART(MONTH,Registration_Date) from [user]

-->69.To find the days of all user's registration date
Select DAY(Registration_Date) from [user]

-->70.To find the post title,post body,comment of that post with the reply
--> which was posted on 28th september 2018 along with the Post's creator	
select username, Post.Post_Title,Post.Post_Body,Comment_Content,Reply_Content,Reply_Date from Post,Comment,Reply,[User]
where Reply_Date='2018-09-28' and Reply.Comment_ID=Comment.Comment_ID
and Comment.Post_ID=Post.Post_ID
and Post.User_ID=[User].User_ID

