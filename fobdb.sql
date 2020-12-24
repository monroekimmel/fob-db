-- create and select the database
DROP DATABASE IF EXISTS fobdb;
CREATE DATABASE fobdb;
USE fobdb;

-- create User table
-- DROP TABLE IF EXISTS User;
Create table User (
ID 				integer 		primary key auto_increment,
UserName 		varchar(20) 	not null,
Password 		varchar(10) 	not null,
FirstName 		varchar(20) 	not null,
LastName 		varchar(20) 	not null,
PhoneNumber 	varchar(12) 	not null,
Email 			varchar(75) 	not null,
IsReviewer 		tinyint 		default 0 not null,
IsAdmin 		tinyint 		default 0 not null,
CONSTRAINT uname unique (UserName)
);

-- create song table
Create table Song (
ID				integer			primary key auto_increment,
Title			varchar(200)	not null,
Album			varchar(100)	not null,
Released		date			not null,
Ranking			varchar(12)		not null,
CONSTRAINT title unique (Title)
);

-- add system user
insert into User (ID, UserName, Password, FirstName, LastName, PhoneNumber, Email, IsReviewer, IsAdmin) VALUES
	(1, 'SYSTEM', 'xxxxx', 'System', 'System', 'XXX-XXX-XXXX', 'system@test.com', 0, 0),
	(2, 'mkimmel', 'login', 'Monroe', 'Kimmel', 'XXX-XXX-XXXX', 'system@test.com', 1, 1);
    
-- add songs:)
-- rankings: unknown, okay, good, great, legendary
insert into Song (ID, Title, Album, Released, Ranking) VALUES
	('Tell That Mick He Just Made My List of Things to Do Today', 'Take This To Your Grave', '2003-06-05', 'Unknown'),
    ('Dead on Arrival', 'Take This To Your Grave', '2003-06-05', 'Good'),
    ('Grand Theft Autumn', 'Take This To Your Grave', '2003-06-05', 'Unknown'),
    ('Saturday', 'Take This To Your Grave', '2003-06-05', 'Great'),
    ('Homesick at Space Camp', 'Take This To Your Grave', '2003-06-05', 'Unknown'),
    ('Sending Postcards From a Plane Crash (Wish You Were Here)', 'Take This To Your Grave', '2003-06-05', 'Unknown'),
    ('Chicago is So Two Years Ago', 'Take This To Your Grave', '2003-06-05', 'Unknown'),
    ('The Pros and Cons of Breathing', 'Take This To Your Grave', '2003-06-05', 'Unknown'),
    ('Grenade Jumper' 'Take This To Your Grave', '2003-06-05', 'Unknown'),
    ('Calm before The Storm', 'Take This To Your Grave', '2003-06-05', 'Unknown'),
    ('Reinventing the Wheel to Run Myself Over', 'Take This To Your Grave', '2003-06-05', 'Unknown'),
    ('The Patron Saint of Liars and Fakes', 'Take This To Your Grave', '2003-06-05', 'Unknown'),
    ("Our Lawyer Made Us Change The Name Of This Song So We Wouldn't Get Sued", 'From Under The Cork Tree', '2005-03-05', 'Great'),
    ('Of All The Gin Joints In The World', 'From Under The Cork Tree', '2005-03-05', 'Great'),
    ('Dance, Dance', 'From Under The Cork Tree', '2005-03-05', 'Legendary'),
    ("Sugar, We're Goin Down", 'From Under The Cork Tree', '2005-03-05', 'Legendary'),
    ('Nobody Puts Baby In The Corner', 'From Under The Cork Tree', '2005-03-05', 'Great'),
    ("I've Got A Dark Alley And A Bad Idea That Says You Should Shut Your Mouth", 'From Under The Cork Tree', '2005-03-05', 'Good'),
    ('7 Minutes In Heaven (Atavan Halen)', 'From Under The Cork Tree', '2005-03-05', 'Great'),
    ('Sophomore Slump or Comeback Of The Year', 'From Under The Cork Tree', '2005-03-05', 'Legendary'),
    ('Champagne For My Real Friends, Real Pain For My Sham Friends', 'From Under The Cork Tree', '2005-03-05', 'Legendary'),
    ('I Slept With Someone In Fall Out Boy And All I Got Was This Stupid Song Written About Me', 'From Under The Cork Tree', '2005-03-05', 'Legendary'),
    ('A Little Less Sixteen Candles, A Little More "Touch Me"', 'From Under The Cork Tree', '2005-03-05', 'Great'),
    ('Get Busy Living Or Get Busy Dying (Do Your Part To Save The Scene And Stop Going To Shows)' 'From Under The Cork Tree', '2005-03-05', 'Great'),
    ('XO', 'From Under The Cork Tree', '2005-03-05', 'Great'),
    ('Thriller', 'Infinity On High', '2007-06-02', 'Legendary'),
    ('"The Take Over, The Breaks Over"', 'Infinity On High', '2007-06-02', 'Great'),
    ("This Ain't A Scene, It's An Arms Race", 'Infinity On High', '2007-06-02', 'Great'),
    ("I'm Like A Lawyer With The Way I'm Always Trying To Get You Off (Me & You)", 'Infinity On High', '2007-06-02', 'Great'),
    ('Hum Hallelujah', 'Infinity On High', '2007-06-02', 'Legendary'),
    ('Golden', 'Infinity On High', '2007-06-02', 'Good'),
    ('Thanks fr th Mmrs', 'Infinity On High', '2007-06-02', 'Great'),
    ("Don't You Know Who I Think I Am", 'Infinity On High', '2007-06-02', 'Great'),
    ('The (After) Life Of The Party', 'Infinity On High', '2007-06-02', 'Legendary'),
    ('The Carpal Tunnel Of Love', 'Infinity On High', '2007-06-02', 'Great'),
    ('Bang The Doldrums', 'Infinity On High', '2007-06-02', 'Legendary'),
    ('Famy < Infamy', 'Infinity On High', '2007-06-02', 'Good'),
    ("You're Crashing, But You're No Wave", 'Infinity On High', '2007-06-02', 'Great'),
    ("I've Got All This Ringing In My Ears And None On My Fingers", 'Infinity On High', '2007-06-02', 'Legendary'),
    ('G.I.N.A.S.F.S.', 'Infinity On High', '2007-06-02', 'Good'),
    ("It's Hard To Say I Do When I Don't", 'Infinity On High', '2007-06-02', 'Good'),
    ('Disloyal Order Of Water Buffaloes', 'Folie A Deux', '2008-10-12', 'Legendary'),
    ("I Don't Care", 'Folie A Deux', '2008-10-12', 'Legendary'),
    ("America's Suitehearts", 'Folie A Deux', '2008-10-12', 'Legendary'),
    ('Headfirst Slide Into Cooperstown On A Bad Bet', 'Folie A Deux', '2008-10-12', 'Legendary'),
    ('The (Shipped) Golden Standard', 'Folie A Deux', '2008-10-12', 'Legendary'),
    ("(Coffee's For Closers)", 'Folie A Deux', '2008-10-12', 'Legendary'),
    ('What A Catch, Donnie', 'Folie A Deux', '2008-10-12', 'Legendary'),
    ('27', 'Folie A Deux', '2008-10-12', 'Legendary'),
    ('Tiffany Blews', 'Folie A Deux', '2008-10-12', 'Legendary'),
    ('w.a.m.s.', 'Folie A Deux', '2008-10-12', 'Legendary'),
    ('20 Dollar Nose Bleed', 'Folie A Deux', '2008-10-12', 'Legendary'),
    ('West Coast Smoker', 'Folie A Deux', '2008-10-12', 'Legendary'),
    ('The Phoenix', 'Save Rock And Roll', '2013-12-04', 'Good'),
    ('My Songs Know What You Did In The Dark (Light Em Up)', 'Save Rock And Roll', '2013-12-04', 'Great'),
    ('Alone Together', 'Save Rock And Roll', '2013-12-04', 'Great'),
    ('Where Did The Party Go', 'Save Rock And Roll', '2013-12-04', 'Great'),
    ('Just One Yesterday', 'Save Rock And Roll', '2013-12-04', 'Great'),
    ('The Mighty Fall', 'Save Rock And Roll', '2013-12-04', 'Great'),
    ('Miss Missing You', 'Save Rock And Roll', '2013-12-04', 'Legendary'),
    ('Death Valley', 'Save Rock And Roll', '2013-12-04', 'Great'),
    ('Young Volcanoes', 'Save Rock And Roll', '2013-12-04', 'Good'),
    ('Rat A Tat', 'Save Rock And Roll', '2013-12-04', 'Great'),
    ('Save Rock And Roll', 'Save Rock And Roll', '2013-12-04', 'Legendary'),
    ('Irresistable', 'American Beauty/American Psycho', '2015-16-01', 'Good'),
    ('American Beauty/American Psycho', 'American Beauty/American Psycho', '2015-16-01', 'Good'),
    ('Centuries', 'American Beauty/American Psycho', '2015-16-01', 'Great'),
    ("The Kids Aren't Alright", 'American Beauty/American Psycho', '2015-16-01', 'Good'),
    ('Uma Thurman', 'American Beauty/American Psycho', '2015-16-01', 'Great'),
    ('Jet Pack Blues', 'American Beauty/American Psycho', '2015-16-01', 'Great'),
    ('Novacaine', 'American Beauty/American Psycho', '2015-16-01', 'Great'),
    ('Fourth Of July', 'American Beauty/American Psycho', '2015-16-01', 'Legendary'),
    ('Favorite Record', 'American Beauty/American Psycho', '2015-16-01', 'Good'),
    ('Immortals', 'American Beauty/American Psycho', '2015-16-01', 'Good'),
    ('Twin Skeletons (Hotel In NYC)', 'American Beauty/American Psycho', '2015-16-01', 'Good'),
    ('Stay Frosty Royal Milk Tea', 'MANIA', '2018-19-01', 'Great'),
    ('The Last Of The Real Ones', 'MANIA', '2018-19-01', 'Good'),
    ("HOLD ME TIGHT OR DON'T", 'MANIA', '2018-19-01', 'Great'),
    ('Wilson (Expensive Mistakes)', 'MANIA', '2018-19-01', 'Legendary'),
    ('Church', 'MANIA', '2018-19-01', 'Legendary'),
    ("Heaven's Gate", 'MANIA', '2018-19-01', 'Legendary'),
    ('Champion', 'MANIA', '2018-19-01', 'Good'),
    ('Sunshine Riptide', 'MANIA', '2018-19-01', 'Good'),
    ('Young And Menace', 'MANIA', '2018-19-01', 'Good'),
    ('Bishops Knife Trick', 'MANIA', '2018-19-01', 'Good')
    ;