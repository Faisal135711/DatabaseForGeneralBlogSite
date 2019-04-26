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
	

	
