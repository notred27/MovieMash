-- SET SQL_SAFE_UPDATES = 0;
-- delete from movie;
-- delete from movie_genres;
-- delete from user;
-- delete from friends;
-- delete from club;
-- delete from review;
-- delete from poll;
-- delete from poll_about;
-- delete from poll_option;
-- delete from club_topics;
-- delete from member_of;
-- -- delete from manages;


insert into movie values ('0', 'Porco Rosso', '1992', '01:34:00', 'In 1930s Italy, a veteran World War I pilot is cursed to look like an anthropomorphic pig', './posters/0.jpg');
insert into movie values ('1', 'Princess Mononoke', '1997', '02:13:00', 'While seeking to cure himself of a curse, young warrior Ashitaka stumbles into a conflict between the people of Iron Town and Princess Mononoke, a girl raised by wolves, who will stop at nothing to prevent the destruction of her home.', './posters/1.jpg');
insert into movie values ('2', 'The Wind Rises', '2013', '02:06:00', 'Jiro Horikoshi studies assiduously to fulfill his aim of becoming an aeronautical engineer. As WWII begins, fighter aircraft designed by him end up getting used by the Japanese Empire against its foes.', './posters/2.jpg');

insert into movie values ('3', 'Dune: Part One', '2021', '02:35:00', 'Paul Atreides arrives on Arrakis after his father accepts the stewardship of the dangerous planet. However, chaos ensues after a betrayal as forces clash to control melange, a precious resource.', './posters/3.jpg');





insert into movie_genres values ('0', 'comedy');
insert into movie_genres values ('1', 'drama');
insert into movie_genres values ('2', 'tragedy');
insert into movie_genres values ('2', 'romance');


insert into movie values ('4', 'The Shawshank Redemption', '1994', '02:22:00', 'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//9cqNxx0GxF0bflZmeSMuL5tnGzr.jpg');
insert into movie_genres values ('4', 'Drama'); 
insert into movie_genres values ('4', 'Crime'); 
insert into movie values ('5', 'The Godfather', '1972', '02:55:00', 'An organized crime dynasty''s aging patriarch transfers control of his clandestine empire to his reluctant son.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//3bhkrj58Vtu7enYsRolD1fZdja1.jpg');
insert into movie_genres values ('5', 'Drama'); 
insert into movie_genres values ('5', 'Crime'); 
insert into movie values ('6', 'The Dark Knight', '2008', '02:32:00', 'When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//qJ2tW6WMUDux911r6m7haRef0WH.jpg');
insert into movie_genres values ('6', 'Drama'); 
insert into movie_genres values ('6', 'Action'); 
insert into movie_genres values ('6', 'Crime'); 
insert into movie_genres values ('6', 'Thriller'); 
insert into movie values ('7', 'The Godfather: Part II', '1974', '03:22:00', 'The early life and career of Vito Corleone in 1920s New York City is portrayed, while his son, Michael, expands and tightens his grip on the family crime syndicate.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//hek3koDUyRQk7FIhPXsa6mT2Zc3.jpg');
insert into movie_genres values ('7', 'Drama'); 
insert into movie_genres values ('7', 'Crime'); 
insert into movie values ('8', '12 Angry Men', '1957', '01:36:00', 'A jury holdout attempts to prevent a miscarriage of justice by forcing his colleagues to reconsider the evidence.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//whDdYx3lh1LHTN0VlPFt51fX29g.jpg');
insert into movie_genres values ('8', 'Drama'); 
insert into movie_genres values ('8', 'TV Movie'); 
insert into movie values ('9', 'The Lord of the Rings: The Return of the King', '2003', '03:21:00', 'Gandalf and Aragorn lead the World of Men against Sauron''s army to draw his gaze from Frodo and Sam as they approach Mount Doom with the One Ring.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//rCzpDGLbOoPwLjy3OAm5NUPOTrC.jpg');
insert into movie_genres values ('9', 'Adventure'); 
insert into movie_genres values ('9', 'Fantasy'); 
insert into movie_genres values ('9', 'Action'); 
insert into movie values ('10', 'Pulp Fiction', '1994', '02:34:00', 'The lives of two mob hitmen, a boxer, a gangster and his wife, and a pair of diner bandits intertwine in four tales of violence and redemption.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//vQWk5YBFWF4bZaofAbv0tShwBvQ.jpg');
insert into movie_genres values ('10', 'Thriller'); 
insert into movie_genres values ('10', 'Crime'); 
insert into movie values ('11', 'Schindler''s List', '1993', '03:15:00', 'In German-occupied Poland during World War II, industrialist Oskar Schindler gradually becomes concerned for his Jewish workforce after witnessing their persecution by the Nazis.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//sF1U4EUQS8YHUYjNl3pMGNIQyr0.jpg');
insert into movie_genres values ('11', 'Drama'); 
insert into movie_genres values ('11', 'History'); 
insert into movie_genres values ('11', 'War'); 
insert into movie values ('12', 'Inception', '2010', '02:28:00', 'A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//ljsZTbVsrQSqZgWeep2B1QiDKuh.jpg');
insert into movie_genres values ('12', 'Action'); 
insert into movie_genres values ('12', 'Science Fiction'); 
insert into movie_genres values ('12', 'Adventure'); 
insert into movie values ('13', 'Fight Club', '1999', '02:19:00', 'An insomniac office worker and a devil-may-care soapmaker form an underground fight club that evolves into something much, much more.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//pB8BM7pdSp6B6Ih7QZ4DrQ3PmJK.jpg');
insert into movie_genres values ('13', 'Drama'); 
insert into movie values ('14', 'The Lord of the Rings: The Fellowship of the Ring', '2001', '02:58:00', 'A meek Hobbit from the Shire and eight companions set out on a journey to destroy the powerful One Ring and save Middle-earth from the Dark Lord Sauron.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//6oom5QYQ2yQTMJIbnvbkBL9cHo6.jpg');
insert into movie_genres values ('14', 'Adventure'); 
insert into movie_genres values ('14', 'Fantasy'); 
insert into movie_genres values ('14', 'Action'); 
insert into movie values ('15', 'Forrest Gump', '1994', '02:22:00', 'The presidencies of Kennedy and Johnson, the events of Vietnam, Watergate and other historical events unfold through the perspective of an Alabama man with an IQ of 75, whose only desire is to be reunited with his childhood sweetheart.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//arw2vcBveWOVZr6pxd9XTd1TdQa.jpg');
insert into movie_genres values ('15', 'Comedy'); 
insert into movie_genres values ('15', 'Drama'); 
insert into movie_genres values ('15', 'Romance'); 
insert into movie values ('16', 'Il buono, il brutto, il cattivo', '1966', '02:41:00', 'A bounty hunting scam joins two men in an uneasy alliance against a third in a race to find a fortune in gold buried in a remote cemetery.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//bX2xnavhMYjWDoZp1VM6VnU1xwe.jpg');
insert into movie_genres values ('16', 'Western'); 
insert into movie values ('17', 'The Lord of the Rings: The Two Towers', '2002', '02:59:00', 'While Frodo and Sam edge closer to Mordor with the help of the shifty Gollum, the divided fellowship makes a stand against Sauron''s new ally, Saruman, and his hordes of Isengard.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//5VTN0pR8gcqV3EPUHHfMGnJYN9L.jpg');
insert into movie_genres values ('17', 'Adventure'); 
insert into movie_genres values ('17', 'Fantasy'); 
insert into movie_genres values ('17', 'Action'); 
insert into movie values ('18', 'The Matrix', '1999', '02:16:00', 'When a beautiful stranger leads computer hacker Neo to a forbidding underworld, he discovers the shocking truth--the life he knows is the elaborate deception of an evil cyber-intelligence.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//dXNAPwY7VrqMAo51EKhhCJfaGb5.jpg');
insert into movie_genres values ('18', 'Action'); 
insert into movie_genres values ('18', 'Science Fiction'); 
insert into movie values ('19', 'Goodfellas', '1990', '02:26:00', 'The story of Henry Hill and his life in the mob, covering his relationship with his wife Karen Hill and his mob partners Jimmy Conway and Tommy DeVito in the Italian-American crime syndicate.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//aKuFiU82s5ISJpGZp7YkIr3kCUd.jpg');
insert into movie_genres values ('19', 'Drama'); 
insert into movie_genres values ('19', 'Crime'); 
insert into movie values ('20', 'Star Wars: Episode V - The Empire Strikes Back', '1980', '02:04:00', 'After the Rebels are brutally overpowered by the Empire on the ice planet Hoth, Luke Skywalker begins Jedi training with Yoda, while his friends are pursued by Darth Vader and a bounty hunter named Boba Fett all over the galaxy.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//9ldJDAUVPpFyodHdE6i7HaCoeGx.jpg');
insert into movie values ('21', 'One Flew Over the Cuckoo''s Nest', '1975', '02:13:00', 'A criminal pleads insanity and is admitted to a mental institution, where he rebels against the oppressive nurse and rallies up the scared patients.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//kjWsMh72V6d8KRLV4EOoSJLT1H7.jpg');
insert into movie_genres values ('21', 'Drama'); 
insert into movie values ('22', 'Hamilton', '2020', '02:40:00', 'The real life of one of America''s foremost founding fathers and first Secretary of the Treasury, Alexander Hamilton. Captured live on Broadway from the Richard Rodgers Theater with the original Broadway cast.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//h1B7tW0t399VDjAcWJh8m87469b.jpg');
insert into movie_genres values ('22', 'History'); 
insert into movie_genres values ('22', 'Drama'); 
insert into movie values ('23', 'Gisaengchung', '2019', '02:12:00', 'Greed and class discrimination threaten the newly formed symbiotic relationship between the wealthy Park family and the destitute Kim clan.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//7IiTTgloJzvGI1TAYymCfbfl3vT.jpg');
insert into movie_genres values ('23', 'Comedy'); 
insert into movie_genres values ('23', 'Thriller'); 
insert into movie_genres values ('23', 'Drama'); 
insert into movie values ('24', 'Soorarai Pottru', '2020', '02:33:00', 'Nedumaaran Rajangam "Maara" sets out to make the common man fly and in the process takes on the world''s most capital intensive industry and several enemies who stand in his way.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//83AFk8uxCpzAcCnVEnEw3sIKiiE.jpg');
insert into movie_genres values ('24', 'Drama'); 
insert into movie_genres values ('24', 'Action'); 
insert into movie values ('25', 'Interstellar', '2014', '02:49:00', 'A team of explorers travel through a wormhole in space in an attempt to ensure humanity''s survival.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//gEU2QniE6E77NI6lCU6MxlNBvIx.jpg');
insert into movie_genres values ('25', 'Adventure'); 
insert into movie_genres values ('25', 'Drama'); 
insert into movie_genres values ('25', 'Science Fiction'); 
insert into movie values ('26', 'Cidade de Deus', '2002', '02:10:00', 'In the slums of Rio, two kids'' paths diverge as one struggles to become a photographer and the other a kingpin.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//k7eYdWvhYQyRQoU2TB2A2Xu2TfD.jpg');
insert into movie_genres values ('26', 'Drama'); 
insert into movie_genres values ('26', 'Crime'); 
insert into movie values ('27', 'Sen to Chihiro no kamikakushi', '2001', '02:05:00', 'During her family''s move to the suburbs, a sullen 10-year-old girl wanders into a world ruled by gods, witches, and spirits, and where humans are changed into beasts.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//39wmItIWsg5sZMyRUHLkWBcuVCM.jpg');
insert into movie_genres values ('27', 'Animation'); 
insert into movie_genres values ('27', 'Family'); 
insert into movie_genres values ('27', 'Fantasy'); 
insert into movie values ('28', 'Saving Private Ryan', '1998', '02:49:00', 'Following the Normandy Landings, a group of U.S. soldiers go behind enemy lines to retrieve a paratrooper whose brothers have been killed in action.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//uqx37cS8cpHg8U35f9U5IBlrCV3.jpg');
insert into movie_genres values ('28', 'Drama'); 
insert into movie_genres values ('28', 'History'); 
insert into movie_genres values ('28', 'War'); 
insert into movie values ('29', 'The Green Mile', '1999', '03:09:00', 'The lives of guards on Death Row are affected by one of their charges: a black man accused of child murder and rape, yet who has a mysterious gift.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//8VG8fDNiy50H4FedGwdSVUPoaJe.jpg');
insert into movie_genres values ('29', 'Fantasy'); 
insert into movie_genres values ('29', 'Drama'); 
insert into movie_genres values ('29', 'Crime'); 
insert into movie values ('30', 'La vita � bella', '1997', '01:56:00', 'When an open-minded Jewish librarian and his son become victims of the Holocaust, he uses a perfect mixture of will, humor, and imagination to protect his son from the dangers around their camp.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//74hLDKjD5aGYOotO6esUVaeISa2.jpg');
insert into movie_genres values ('30', 'Comedy'); 
insert into movie_genres values ('30', 'Drama'); 
insert into movie values ('31', 'Se7en', '1995', '02:07:00', 'Two detectives, a rookie and a veteran, hunt a serial killer who uses the seven deadly sins as his motives.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//191nKfP0ehp3uIvWqgPbFmI4lv9.jpg');
insert into movie_genres values ('31', 'Crime'); 
insert into movie_genres values ('31', 'Mystery'); 
insert into movie_genres values ('31', 'Thriller'); 
insert into movie values ('32', 'The Silence of the Lambs', '1991', '01:58:00', 'A young F.B.I. cadet must receive the help of an incarcerated and manipulative cannibal killer to help catch another serial killer, a madman who skins his victims.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//uS9m8OBk1A8eM9I042bx8XXpqAq.jpg');
insert into movie_genres values ('32', 'Crime'); 
insert into movie_genres values ('32', 'Drama'); 
insert into movie_genres values ('32', 'Thriller'); 
insert into movie values ('33', 'Star Wars', '1977', '02:01:00', 'Luke Skywalker joins forces with a Jedi Knight, a cocky pilot, a Wookiee and two droids to save the galaxy from the Empire''s world-destroying battle station, while also attempting to rescue Princess Leia from the mysterious Darth Vader.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//6FfCtAuVAW8XJjZ7eWeLibRLWTw.jpg');
insert into movie_genres values ('33', 'Adventure'); 
insert into movie_genres values ('33', 'Action'); 
insert into movie_genres values ('33', 'Science Fiction'); 
insert into movie values ('34', 'Seppuku', '1962', '02:13:00', 'When a ronin requesting seppuku at a feudal lord\'s palace is told of the brutal suicide of another ronin who previously visited, he reveals how their pasts are intertwined - and in doing so challenges the clan\'s integrity.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//7VMh9jkgiUQhiXVV374k4usUHig.jpg');
insert into movie values ('35', 'Shichinin no samurai', '1954', '03:27:00', 'A poor village under attack by bandits recruits seven unemployed samurai to help them defend themselves.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//tVoMvi0h1CQSgNFZUkvLUJCcOuh.jpg');
insert into movie_genres values ('35', 'Documentary'); 
insert into movie values ('36', 'It''s a Wonderful Life', '1946', '02:10:00', 'An angel is sent from Heaven to help a desperately frustrated businessman by showing him what life would have been like if he had never existed.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//bSqt9rhDZx1Q7UZ86dBPKdNomp2.jpg');
insert into movie_genres values ('36', 'Drama'); 
insert into movie_genres values ('36', 'Family'); 
insert into movie_genres values ('36', 'Fantasy'); 
insert into movie values ('37', 'Joker', '2019', '02:02:00', 'In Gotham City, mentally troubled comedian Arthur Fleck is disregarded and mistreated by society. He then embarks on a downward spiral of revolution and bloody crime. This path brings him face-to-face with his alter-ego: the Joker.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//udDclJoHjfjb8Ekgsd4FDteOkCU.jpg');
insert into movie_genres values ('37', 'Crime'); 
insert into movie_genres values ('37', 'Thriller'); 
insert into movie_genres values ('37', 'Drama'); 
insert into movie values ('38', 'Whiplash', '2014', '01:46:00', 'A promising young drummer enrolls at a cut-throat music conservatory where his dreams of greatness are mentored by an instructor who will stop at nothing to realize a student''s potential.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//7fn624j5lj3xTme2SgiLCeuedmO.jpg');
insert into movie_genres values ('38', 'Drama'); 
insert into movie_genres values ('38', 'Music'); 
insert into movie values ('39', 'The Intouchables', '2011', '01:52:00', 'After he becomes a quadriplegic from a paragliding accident, an aristocrat hires a young man from the projects to be his caregiver.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//1QU7HKgsQbGpzsJbJK4pAVQV9F5.jpg');
insert into movie_genres values ('39', 'Drama'); 
insert into movie_genres values ('39', 'Comedy'); 
insert into movie values ('40', 'The Prestige', '2006', '02:10:00', 'After a tragic accident, two stage magicians engage in a battle to create the ultimate illusion while sacrificing everything they have to outwit each other.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//bdN3gXuIZYaJP7ftKK2sU0nPtEA.jpg');
insert into movie_genres values ('40', 'Drama'); 
insert into movie_genres values ('40', 'Mystery'); 
insert into movie_genres values ('40', 'Science Fiction'); 
insert into movie values ('41', 'The Departed', '2006', '02:31:00', 'An undercover cop and a mole in the police attempt to identify each other while infiltrating an Irish gang in South Boston.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//nT97ifVT2J1yMQmeq20Qblg61T.jpg');
insert into movie_genres values ('41', 'Drama'); 
insert into movie_genres values ('41', 'Thriller'); 
insert into movie_genres values ('41', 'Crime'); 
insert into movie values ('42', 'The Pianist', '2002', '02:30:00', 'A Polish Jewish musician struggles to survive the destruction of the Warsaw ghetto of World War II.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//2hFvxCCWrTmCYwfy7yum0GKRi3Y.jpg');
insert into movie_genres values ('42', 'Drama'); 
insert into movie_genres values ('42', 'War'); 
insert into movie values ('43', 'Gladiator', '2000', '02:35:00', 'A former Roman General sets out to exact vengeance against the corrupt emperor who murdered his family and sent him into slavery.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//ty8TGRuvJLPUmAR1H1nRIsgwvim.jpg');
insert into movie_genres values ('43', 'Action'); 
insert into movie_genres values ('43', 'Drama'); 
insert into movie_genres values ('43', 'Adventure'); 
insert into movie values ('44', 'American History X', '1998', '01:59:00', 'A former neo-nazi skinhead tries to prevent his younger brother from going down the same wrong path that he did.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//euypWkaYFOLW3e5rLIcTAjWnhhT.jpg');
insert into movie_genres values ('44', 'Drama'); 
insert into movie values ('45', 'The Usual Suspects', '1995', '01:46:00', 'A sole survivor tells of the twisty events leading up to a horrific gun battle on a boat, which began when five criminals met at a seemingly random police lineup.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//rWbsxdwF9qQzpTPCLmDfVnVqTK1.jpg');
insert into movie_genres values ('45', 'Drama'); 
insert into movie_genres values ('45', 'Crime'); 
insert into movie_genres values ('45', 'Thriller'); 
insert into movie values ('46', 'Leon', '1994', '01:50:00', 'Mathilda, a 12-year-old girl, is reluctantly taken in by Leon, a professional assassin, after her family is murdered. An unusual relationship forms as she becomes his protegee and learns the assassin''s trade.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//yI6X2cCM5YPJtxMhUd3dPGqDAhw.jpg');
insert into movie_genres values ('46', 'Crime'); 
insert into movie_genres values ('46', 'Drama'); 
insert into movie_genres values ('46', 'Action'); 
insert into movie values ('47', 'The Lion King', '1994', '01:28:00', 'Lion prince Simba and his father are targeted by his bitter uncle, who wants to ascend the throne himself.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//dzBtMocZuJbjLOXvrl4zGYigDzh.jpg');
insert into movie_genres values ('47', 'Adventure'); 
insert into movie_genres values ('47', 'Drama'); 
insert into movie_genres values ('47', 'Family'); 
insert into movie_genres values ('47', 'Animation'); 
insert into movie values ('48', 'Terminator 2: Judgment Day', '1991', '02:17:00', 'A cyborg, identical to the one who failed to kill Sarah Connor, must now protect her teenage son, John Connor, from a more advanced and powerful cyborg.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//5M0j0B18abtBI5gi2RhfjjurTqb.jpg');
insert into movie_genres values ('48', 'Action'); 
insert into movie_genres values ('48', 'Thriller'); 
insert into movie_genres values ('48', 'Science Fiction'); 
insert into movie values ('49', 'Nuovo Cinema Paradiso', '1988', '02:35:00', 'A filmmaker recalls his childhood when falling in love with the pictures at the cinema of his home village and forms a deep friendship with the cinema''s projectionist.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//gCI2AeMV4IHSewhJkzsur5MEp6R.jpg');
insert into movie_genres values ('49', 'Drama'); 
insert into movie_genres values ('49', 'Romance'); 
insert into movie values ('50', 'Hotaru no haka', '1988', '01:29:00', 'A young boy and his little sister struggle to survive in Japan during World War II.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//im6u58cPa9HlH5DqSnZGy0O37l5.jpg');
insert into movie_genres values ('50', 'Drama'); 
insert into movie values ('51', 'Back to the Future', '1985', '01:56:00', 'Marty McFly, a 17-year-old high school student, is accidentally sent thirty years into the past in a time-traveling DeLorean invented by his close friend, the eccentric scientist Doc Brown.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//vN5B5WgYscRGcQpVhHl6p9DDTP0.jpg');
insert into movie_genres values ('51', 'Adventure'); 
insert into movie_genres values ('51', 'Comedy'); 
insert into movie_genres values ('51', 'Science Fiction'); 
insert into movie values ('52', 'Once Upon a Time in the West', '1968', '02:45:00', 'A mysterious stranger with a harmonica joins forces with a notorious desperado to protect a beautiful widow from a ruthless assassin working for the railroad.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//qbYgqOczabWNn2XKwgMtVrntD6P.jpg');
insert into movie_genres values ('52', 'Drama'); 
insert into movie_genres values ('52', 'Western'); 
insert into movie values ('53', 'Psycho', '1960', '01:49:00', 'A Phoenix secretary embezzles $40,000 from her employer''s client, goes on the run, and checks into a remote motel run by a young man under the domination of his mother.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//tY0OLFUsTXdvNppTpnNc4EVYy2z.jpg');
insert into movie_genres values ('53', 'Horror'); 
insert into movie_genres values ('53', 'Mystery'); 
insert into movie_genres values ('53', 'Thriller'); 
insert into movie values ('54', 'Casablanca', '1942', '01:42:00', 'A cynical expatriate American cafe owner struggles to decide whether or not to help his former lover and her fugitive husband escape the Nazis in French Morocco.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//5K7cOHoay2mZusSLezBOY0Qxh8a.jpg');
insert into movie_genres values ('54', 'Drama'); 
insert into movie_genres values ('54', 'Romance'); 
insert into movie values ('55', 'Modern Times', '1936', '01:27:00', 'The Tramp struggles to live in modern industrial society with the help of a young homeless woman.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//7uoiKOEjxBBW0AgDGQWrlfGQ90w.jpg');
insert into movie_genres values ('55', 'Comedy'); 
insert into movie_genres values ('55', 'Drama'); 
insert into movie_genres values ('55', 'Romance'); 
insert into movie values ('56', 'City Lights', '1931', '01:27:00', 'With the aid of a wealthy erratic tippler, a dewy-eyed tramp who has fallen in love with a sightless flower girl accumulates money to be able to help her medically.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//ugmakEL5y294I5bXgiBqApuZpwc.jpg');
insert into movie_genres values ('56', 'Comedy'); 
insert into movie_genres values ('56', 'Drama'); 
insert into movie_genres values ('56', 'Romance'); 
insert into movie values ('57', 'Capharna�m', '2018', '02:06:00', 'While serving a five-year sentence for a violent crime, a 12-year-old boy sues his parents for neglect.', 'https://m.media-amazon.com/images/M/MV5BMmExNzU2ZWMtYzUwYi00YmM2LTkxZTQtNmVhNjY0NTMyMWI2XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX67_CR0,0,67,98_AL_.jpg');
insert into movie values ('58', 'Ayla: The Daughter of War', '2017', '02:05:00', 'In 1950, amid-st the ravages of the Korean War, Sergeant S�leyman stumbles upon a half-frozen little girl, with no parents and no help in sight. Frantic, scared and on the verge of death, ...                See full summary��', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//8RELLU0RK9hRIteLzHFZ0dK8YSi.jpg');
insert into movie_genres values ('58', 'Drama'); 
insert into movie_genres values ('58', 'War'); 
insert into movie_genres values ('58', 'History'); 
insert into movie values ('59', 'Vikram Vedha', '2017', '02:27:00', 'Vikram, a no-nonsense police officer, accompanied by Simon, his partner, is on the hunt to capture Vedha, a smuggler and a murderer. Vedha tries to change Vikram''s life, which leads to a conflict.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//ob9YxdzRu5lfKgz0PNrlL45dorf.jpg');
insert into movie_genres values ('59', 'Action'); 
insert into movie_genres values ('59', 'Thriller'); 
insert into movie_genres values ('59', 'Crime'); 
insert into movie_genres values ('59', 'Adventure'); 
insert into movie values ('60', 'Kimi no na wa.', '2016', '01:46:00', 'Two strangers find themselves linked in a bizarre way. When a connection forms, will distance be the only thing to keep them apart?', 'https://m.media-amazon.com/images/M/MV5BODRmZDVmNzUtZDA4ZC00NjhkLWI2M2UtN2M0ZDIzNDcxYThjL2ltYWdlXkEyXkFqcGdeQXVyNTk0MzMzODA@._V1_UX67_CR0,0,67,98_AL_.jpg');
insert into movie_genres values ('60', 'Drama'); 
insert into movie_genres values ('60', 'Fantasy'); 
insert into movie_genres values ('60', 'Romance'); 
insert into movie values ('61', 'Dangal', '2016', '02:41:00', 'Former wrestler Mahavir Singh Phogat and his two wrestler daughters struggle towards glory at the Commonwealth Games in the face of societal oppression.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//lHd3W8E5aKoki9pDP7tN7yEh3c0.jpg');
insert into movie_genres values ('61', 'Drama'); 
insert into movie_genres values ('61', 'Family'); 
insert into movie_genres values ('61', 'Comedy'); 
insert into movie values ('62', 'Spider-Man: Into the Spider-Verse', '2018', '01:57:00', 'Teen Miles Morales becomes the Spider-Man of his universe, and must join with five spider-powered individuals from other dimensions to stop a threat for all realities.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//iiZZdoQBEYBv6id8su7ImL0oCbD.jpg');
insert into movie_genres values ('62', 'Animation'); 
insert into movie_genres values ('62', 'Action'); 
insert into movie_genres values ('62', 'Adventure'); 
insert into movie_genres values ('62', 'Science Fiction'); 
insert into movie values ('63', 'Avengers: Endgame', '2019', '03:01:00', 'After the devastating events of Avengers: Infinity War (2018), the universe is in ruins. With the help of remaining allies, the Avengers assemble once more in order to reverse Thanos'' actions and restore balance to the universe.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//ulzhLuWrPK07P1YkdWQLZnQh1JL.jpg');
insert into movie_genres values ('63', 'Adventure'); 
insert into movie_genres values ('63', 'Science Fiction'); 
insert into movie_genres values ('63', 'Action'); 
insert into movie values ('64', 'Avengers: Infinity War', '2018', '02:29:00', 'The Avengers and their allies must be willing to sacrifice all in an attempt to defeat the powerful Thanos before his blitz of devastation and ruin puts an end to the universe.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//7WsyChQLEftFiDOVTGkv3hFpyyt.jpg');
insert into movie_genres values ('64', 'Adventure'); 
insert into movie_genres values ('64', 'Action'); 
insert into movie_genres values ('64', 'Science Fiction'); 
insert into movie values ('65', 'Coco', '2017', '01:45:00', 'Aspiring musician Miguel, confronted with his family''s ancestral ban on music, enters the Land of the Dead to find his great-great-grandfather, a legendary singer.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//xQ7gSJIlF4wG6qcaRmiVGBiTKWW.jpg');
insert into movie_genres values ('65', 'Comedy'); 
insert into movie values ('66', 'Django Unchained', '2012', '02:45:00', 'With the help of a German bounty hunter, a freed slave sets out to rescue his wife from a brutal Mississippi plantation owner.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//bV0rWoiRo7pHUTQkh6Oio6irlXO.jpg');
insert into movie_genres values ('66', 'Drama'); 
insert into movie_genres values ('66', 'Western'); 
insert into movie values ('67', 'The Dark Knight Rises', '2012', '02:44:00', 'Eight years after the Joker''s reign of anarchy, Batman, with the help of the enigmatic Catwoman, is forced from his exile to save Gotham City from the brutal guerrilla terrorist Bane.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//hr0L2aueqlP2BYUblTTjmtn0hw4.jpg');
insert into movie_genres values ('67', 'Action'); 
insert into movie_genres values ('67', 'Crime'); 
insert into movie_genres values ('67', 'Drama'); 
insert into movie_genres values ('67', 'Thriller'); 
insert into movie values ('68', '3 Idiots', '2009', '02:50:00', 'Two friends are searching for their long lost companion. They revisit their college days and recall the memories of their friend who inspired them to think differently, even as the rest of the world called them "idiots".', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//66A9MqXOyVFCssoloscw79z8Tew.jpg');
insert into movie_genres values ('68', 'Drama'); 
insert into movie_genres values ('68', 'Comedy'); 
insert into movie values ('69', 'Taare Zameen Par', '2007', '02:45:00', 'An eight-year-old boy is thought to be a lazy trouble-maker, until the new art teacher has the patience and compassion to discover the real problem behind his struggles in school.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//puHRt6Raovm5ujGCdwLWvRv4NHU.jpg');
insert into movie_genres values ('69', 'Drama'); 
insert into movie values ('70', 'WALL�E', '2008', '01:38:00', 'In the distant future, a small waste-collecting robot inadvertently embarks on a space journey that will ultimately decide the fate of mankind.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//hbhFnRzzg6ZDmm8YAmxBnQpQIPh.jpg');
insert into movie_genres values ('70', 'Animation'); 
insert into movie_genres values ('70', 'Family'); 
insert into movie_genres values ('70', 'Science Fiction'); 
insert into movie values ('71', 'The Lives of Others', '2006', '02:17:00', 'In 1984 East Berlin, an agent of the secret police, conducting surveillance on a writer and his lover, finds himself becoming increasingly absorbed by their lives.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//cVUDMnskSc01rdbyH0tLATTJUdP.jpg');
insert into movie_genres values ('71', 'Drama'); 
insert into movie_genres values ('71', 'Thriller'); 
insert into movie values ('72', 'Oldeuboi', '2003', '01:41:00', 'After being kidnapped and imprisoned for fifteen years, Oh Dae-Su is released, only to find that he must find his captor in five days.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//pWDtjs568ZfOTMbURQBYuT4Qxka.jpg');
insert into movie_genres values ('72', 'Drama'); 
insert into movie_genres values ('72', 'Thriller'); 
insert into movie_genres values ('72', 'Mystery'); 
insert into movie_genres values ('72', 'Action'); 
insert into movie values ('73', 'Memento', '2000', '01:53:00', 'A man with short-term memory loss attempts to track down his wife''s murderer.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//fKTPH2WvH8nHTXeBYBVhawtRqtR.jpg');
insert into movie_genres values ('73', 'Mystery'); 
insert into movie_genres values ('73', 'Thriller'); 
insert into movie values ('74', 'Mononoke-hime', '1997', '02:14:00', 'On a journey to find the cure for a Tatarigami''s curse, Ashitaka finds himself in the middle of a war between the forest gods and Tatara, a mining colony. In this quest he also meets San, the Mononoke Hime.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//cMYCDADoLKLbB83g4WnJegaZimC.jpg');
insert into movie_genres values ('74', 'Adventure'); 
insert into movie_genres values ('74', 'Fantasy'); 
insert into movie_genres values ('74', 'Animation'); 
insert into movie values ('75', 'Once Upon a Time in America', '1984', '03:49:00', 'A former Prohibition-era Jewish gangster returns to the Lower East Side of Manhattan over thirty years later, where he once again must confront the ghosts and regrets of his old life.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//i0enkzsL5dPeneWnjl1fCWm6L7k.jpg');
insert into movie_genres values ('75', 'Drama'); 
insert into movie_genres values ('75', 'Crime'); 
insert into movie values ('76', 'Raiders of the Lost Ark', '1981', '01:55:00', 'In 1936, archaeologist and adventurer Indiana Jones is hired by the U.S. government to find the Ark of the Covenant before Adolf Hitler''s Nazis can obtain its awesome powers.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//ceG9VzoRAVGwivFU403Wc3AHRys.jpg');
insert into movie_genres values ('76', 'Adventure'); 
insert into movie_genres values ('76', 'Action'); 
insert into movie values ('77', 'The Shining', '1980', '02:26:00', 'A family heads to an isolated hotel for the winter where a sinister presence influences the father into violence, while his psychic son sees horrific forebodings from both past and future.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//xazWoLealQwEgqZ89MLZklLZD3k.jpg');
insert into movie_genres values ('77', 'Horror'); 
insert into movie_genres values ('77', 'Thriller'); 
insert into movie values ('78', 'Apocalypse Now', '1979', '02:27:00', 'A U.S. Army officer serving in Vietnam is tasked with assassinating a renegade Special Forces Colonel who sees himself as a god.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//gQB8Y5RCMkv2zwzFHbUJX3kAhvA.jpg');
insert into movie_genres values ('78', 'Drama'); 
insert into movie_genres values ('78', 'War'); 
insert into movie values ('79', 'Alien', '1979', '01:57:00', 'After a space merchant vessel receives an unknown transmission as a distress call, one of the crew is attacked by a mysterious life form and they soon realize that its life cycle has merely begun.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//vfrQk5IPloGg1v9Rzbh2Eg3VGyM.jpg');
insert into movie_genres values ('79', 'Horror'); 
insert into movie_genres values ('79', 'Science Fiction'); 
insert into movie values ('80', 'Anand', '1971', '02:02:00', 'The story of a terminally ill man who wishes to live life to the fullest before the inevitable occurs, as told by his best friend.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//a0inCjOHm5Y8MEjxUPfXA9iPZmv.jpg');
insert into movie values ('81', 'Tengoku to jigoku', '1963', '02:23:00', 'An executive of a shoe company becomes a victim of extortion when his chauffeur''s son is kidnapped and held for ransom.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//q2XK840Y3DeUbBLfezbgisPfIrr.jpg');
insert into movie_genres values ('81', 'Documentary'); 
insert into movie values ('82', 'Dr. Strangelove or: How I Learned to Stop Worrying and Love the Bomb', '1964', '01:35:00', 'An insane general triggers a path to nuclear holocaust that a War Room full of politicians and generals frantically tries to stop.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//6x7MzQ6BOMlRzam1StcmPO9v61g.jpg');
insert into movie_genres values ('82', 'Comedy'); 
insert into movie_genres values ('82', 'War'); 
insert into movie values ('83', 'Witness for the Prosecution', '1957', '01:56:00', 'A veteran British barrister must defend his client in a murder trial that has surprise after surprise.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//sreUg3pWJGL24C1qV4HZLxkbZD7.jpg');
insert into movie_genres values ('83', 'Crime'); 
insert into movie_genres values ('83', 'Drama'); 
insert into movie values ('84', 'Paths of Glory', '1957', '01:28:00', 'After refusing to attack an enemy position, a general accuses the soldiers of cowardice and their commanding officer must defend them.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//tJXwtzOSNUC8dxJfrdvkNtGrrgW.jpg');
insert into movie_genres values ('84', 'War'); 
insert into movie_genres values ('84', 'Drama'); 
insert into movie_genres values ('84', 'History'); 
insert into movie values ('85', 'Rear Window', '1954', '01:52:00', 'A wheelchair-bound photographer spies on his neighbors from his apartment window and becomes convinced one of them has committed murder.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//zmbPjkZhlnt0JEOU9xMYtbjNXuL.jpg');
insert into movie_genres values ('85', 'Drama'); 
insert into movie_genres values ('85', 'Thriller'); 
insert into movie_genres values ('85', 'TV Movie'); 
insert into movie values ('86', 'Sunset Blvd.', '1950', '01:50:00', 'A screenwriter develops a dangerous relationship with a faded film star determined to make a triumphant return.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//eastnKVj95q7BrFMYOzkYSJwks6.jpg');
insert into movie_genres values ('86', 'Drama'); 
insert into movie_genres values ('86', 'Music'); 
insert into movie values ('87', 'The Great Dictator', '1940', '02:05:00', 'Dictator Adenoid Hynkel tries to expand his empire while a poor Jewish barber tries to avoid persecution from Hynkel''s regime.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//nhMXB8GTdswYMCL9nepDZymJCOr.jpg');
insert into movie_genres values ('87', 'Comedy'); 
insert into movie_genres values ('87', 'War'); 
insert into movie values ('88', '1917', '2019', '01:59:00', 'April 6th, 1917. As a regiment assembles to wage war deep in enemy territory, two soldiers are assigned to race against time and deliver a message that will stop 1,600 men from walking straight into a deadly trap.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//iZf0KyrE25z1sage4SYFLCCrMi9.jpg');
insert into movie_genres values ('88', 'War'); 
insert into movie_genres values ('88', 'History'); 
insert into movie_genres values ('88', 'Thriller'); 
insert into movie_genres values ('88', 'Drama'); 
insert into movie values ('89', 'Tumbbad', '2018', '01:44:00', 'A mythological story about a goddess who created the entire universe. The plot revolves around the consequences when humans build a temple for her first-born.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//6qeRFImDskoIRkSCFatqeM2rM3k.jpg');
insert into movie_genres values ('89', 'Fantasy'); 
insert into movie_genres values ('89', 'Horror'); 
insert into movie values ('90', 'Andhadhun', '2018', '02:19:00', 'A series of mysterious events change the life of a blind pianist, who must now report a crime that he should technically know nothing of.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//dy3K6hNvwE05siGgiLJcEiwgpdO.jpg');
insert into movie_genres values ('90', 'Crime'); 
insert into movie_genres values ('90', 'Mystery'); 
insert into movie_genres values ('90', 'Thriller'); 
insert into movie_genres values ('90', 'Comedy'); 
insert into movie values ('91', 'Drishyam', '2013', '02:40:00', 'A man goes to extreme lengths to save his family from punishment after the family commits an accidental crime.', 'https://m.media-amazon.com/images/M/MV5BYmY3MzYwMGUtOWMxYS00OGVhLWFjNmUtYzlkNGVmY2ZkMjA3XkEyXkFqcGdeQXVyMTExNDQ2MTI@._V1_UY98_CR4,0,67,98_AL_.jpg');
insert into movie_genres values ('91', 'Thriller'); 
insert into movie values ('92', 'Jagten', '2012', '01:55:00', 'A teacher lives a lonely life, all the while struggling over his son''s custody. His life slowly gets better as he finds love and receives good news from his son, but his new luck is about to be brutally shattered by an innocent little lie.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//jkixsXzRh28q3PCqFoWcf7unghT.jpg');
insert into movie_genres values ('92', 'Drama'); 
insert into movie values ('93', 'Jodaeiye Nader az Simin', '2011', '02:03:00', 'A married couple are faced with a difficult decision - to improve the life of their child by moving to another country or to stay in Iran and look after a deteriorating parent who has Alzheimer''s disease.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//wQVvASmpm8jGhJBQU20OkoMcNzi.jpg');
insert into movie_genres values ('93', 'Drama'); 
insert into movie values ('94', 'Incendies', '2010', '02:11:00', 'Twins journey to the Middle East to discover their family history and fulfill their mother''s last wishes.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//yH6DAQVgbyj72S66gN4WWVoTjuf.jpg');
insert into movie_genres values ('94', 'Drama'); 
insert into movie_genres values ('94', 'War'); 
insert into movie_genres values ('94', 'Mystery'); 
insert into movie values ('95', 'Miracle in cell NO.7', '2019', '02:12:00', 'A story of love between a mentally-ill father who was wrongly accused of murder and his lovely six years old daughter. The prison would be their home. Based on the 2013 Korean movie 7-beon-bang-ui seon-mul (2013).', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//6sqbCqk6tFQgO2nsVqnez7xdRLx.jpg');
insert into movie_genres values ('95', 'Drama'); 
insert into movie_genres values ('95', 'Comedy'); 
insert into movie values ('96', 'Babam ve Oglum', '2005', '01:52:00', 'The family of a left-wing journalist is torn apart after the military coup of Turkey in 1980.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//dcKY23xowYTU9B1cagUdHQwsxOB.jpg');
insert into movie_genres values ('96', 'Drama'); 
insert into movie values ('97', 'Inglourious Basterds', '2009', '02:33:00', 'In Nazi-occupied France during World War II, a plan to assassinate Nazi leaders by a group of Jewish U.S. soldiers coincides with a theatre owner''s vengeful plans for the same.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//7sfbEnaARXDDhKm0CZ7D7uc2sbo.jpg');
insert into movie_genres values ('97', 'Drama'); 
insert into movie_genres values ('97', 'Thriller'); 
insert into movie_genres values ('97', 'War'); 
insert into movie values ('98', 'Eternal Sunshine of the Spotless Mind', '2004', '01:48:00', 'When their relationship turns sour, a couple undergoes a medical procedure to have each other erased from their memories.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//5MwkWH9tYHv3mV9OdYTMR5qreIz.jpg');
insert into movie_genres values ('98', 'Science Fiction'); 
insert into movie_genres values ('98', 'Drama'); 
insert into movie_genres values ('98', 'Romance'); 
insert into movie values ('99', 'Am�lie', '2001', '02:02:00', 'Am�lie is an innocent and naive girl in Paris with her own sense of justice. She decides to help those around her and, along the way, discovers love.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//oTKduWL2tpIKEmkAqF4mFEAWAsv.jpg');
insert into movie_genres values ('99', 'Comedy'); 
insert into movie_genres values ('99', 'Romance'); 
insert into movie values ('100', 'Snatch', '2000', '01:44:00', 'Unscrupulous boxing promoters, violent bookmakers, a Russian gangster, incompetent amateur robbers and supposedly Jewish jewelers fight to track down a priceless stolen diamond.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//8KSDI7ijEv7QVZdIyrLw5Gnhhr8.jpg');
insert into movie_genres values ('100', 'Crime'); 
insert into movie_genres values ('100', 'Comedy'); 
insert into movie values ('101', 'Requiem for a Dream', '2000', '01:42:00', 'The drug-induced utopias of four Coney Island people are shattered when their addictions run deep.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//nOd6vjEmzCT0k4VYqsA2hwyi87C.jpg');
insert into movie_genres values ('101', 'Crime'); 
insert into movie_genres values ('101', 'Drama'); 
insert into movie values ('102', 'American Beauty', '1999', '02:02:00', 'A sexually frustrated suburban father has a mid-life crisis after becoming infatuated with his daughter''s best friend.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//s5PXkDqS8W3K4wCPNZBzf10zycw.jpg');
insert into movie_genres values ('102', 'Drama'); 
insert into movie values ('103', 'Good Will Hunting', '1997', '02:06:00', 'Will Hunting, a janitor at M.I.T., has a gift for mathematics, but needs help from a psychologist to find direction in his life.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//z2FnLKpFi1HPO7BEJxdkv6hpJSU.jpg');
insert into movie_genres values ('103', 'Drama'); 
insert into movie values ('104', 'Bacheha-Ye aseman', '1997', '01:29:00', 'After a boy loses his sister''s pair of shoes, he goes on a series of adventures in order to find them. When he can''t, he tries a new way to "win" a new pair.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//jWqh1CJWAEcxckMRrf6ARhIEh0R.jpg');
insert into movie_genres values ('104', 'Drama'); 
insert into movie_genres values ('104', 'Family'); 
insert into movie values ('105', 'Toy Story', '1995', '01:21:00', 'A cowboy doll is profoundly threatened and jealous when a new spaceman figure supplants him as top toy in a boy''s room.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//uXDfjJbdP4ijW5hWSBrPrlKpxab.jpg');
insert into movie_genres values ('105', 'Animation'); 
insert into movie_genres values ('105', 'Adventure'); 
insert into movie_genres values ('105', 'Family'); 
insert into movie_genres values ('105', 'Comedy'); 
insert into movie values ('106', 'Braveheart', '1995', '02:58:00', 'Scottish warrior William Wallace leads his countrymen in a rebellion to free his homeland from the tyranny of King Edward I of England.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//or1gBugydmjToAEq7OZY0owwFk.jpg');
insert into movie_genres values ('106', 'Action'); 
insert into movie_genres values ('106', 'Drama'); 
insert into movie_genres values ('106', 'History'); 
insert into movie_genres values ('106', 'War'); 
insert into movie values ('107', 'Reservoir Dogs', '1992', '01:39:00', 'When a simple jewelry heist goes horribly wrong, the surviving criminals begin to suspect that one of them is a police informant.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//xi8Iu6qyTfyZVDVy60raIOYJJmk.jpg');
insert into movie_genres values ('107', 'Crime'); 
insert into movie_genres values ('107', 'Thriller'); 
insert into movie values ('108', 'Full Metal Jacket', '1987', '01:56:00', 'A pragmatic U.S. Marine observes the dehumanizing effects the Vietnam War has on his fellow recruits from their brutal boot camp training to the bloody street fighting in Hue.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//kMKyx1k8hWWscYFnPbnxxN4Eqo4.jpg');
insert into movie_genres values ('108', 'Drama'); 
insert into movie_genres values ('108', 'War'); 
insert into movie values ('109', 'Idi i smotri', '1985', '02:22:00', 'After finding an old rifle, a young boy joins the Soviet resistance movement against ruthless German forces and experiences the horrors of World War II.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//qNbMsKVzigERgJUbwf8pKyZogpb.jpg');
insert into movie_genres values ('109', 'Drama'); 
insert into movie_genres values ('109', 'War'); 
insert into movie values ('110', 'Aliens', '1986', '02:17:00', 'Fifty-seven years after surviving an apocalyptic attack aboard her space vessel by merciless space creatures, Officer Ripley awakens from hyper-sleep and tries to warn anyone who will listen about the predators.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//r1x5JGpyqZU8PYhbs4UcrO1Xb6x.jpg');
insert into movie_genres values ('110', 'Action'); 
insert into movie_genres values ('110', 'Thriller'); 
insert into movie_genres values ('110', 'Science Fiction'); 
insert into movie values ('111', 'Amadeus', '1984', '02:40:00', 'The life, success and troubles of Wolfgang Amadeus Mozart, as told by Antonio Salieri, the contemporaneous composer who was insanely jealous of Mozart''s talent and claimed to have murdered him.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//1n5VUlCqgmVax1adxGZm8oCFaKc.jpg');
insert into movie_genres values ('111', 'History'); 
insert into movie_genres values ('111', 'Music'); 
insert into movie_genres values ('111', 'Drama'); 
insert into movie values ('112', 'Scarface', '1983', '02:50:00', 'In 1980 Miami, a determined Cuban immigrant takes over a drug cartel and succumbs to greed.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//y4E5oRiHMTFkEB12IIcpbKbKzDW.jpg');
insert into movie_genres values ('112', 'Crime'); 
insert into movie_genres values ('112', 'Drama'); 
insert into movie values ('113', 'Star Wars: Episode VI - Return of the Jedi', '1983', '02:11:00', 'After a daring mission to rescue Han Solo from Jabba the Hutt, the Rebels dispatch to Endor to destroy the second Death Star. Meanwhile, Luke struggles to help Darth Vader back from the dark side without falling into the Emperor''s trap.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//jQYlydvHm3kUix1f8prMucrplhm.jpg');
insert into movie_genres values ('113', 'Adventure'); 
insert into movie_genres values ('113', 'Action'); 
insert into movie_genres values ('113', 'Science Fiction'); 
insert into movie values ('114', 'Das Boot', '1981', '02:29:00', 'The claustrophobic world of a WWII German U-boat; boredom, filth and sheer terror.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//gHylSjrPIkxLIzJq3LobYdMN7N2.jpg');
insert into movie_genres values ('114', 'Documentary'); 
insert into movie_genres values ('114', 'History'); 
insert into movie_genres values ('114', 'TV Movie'); 
insert into movie values ('115', 'Taxi Driver', '1976', '01:54:00', 'A mentally unstable veteran works as a nighttime taxi driver in New York City, where the perceived decadence and sleaze fuels his urge for violent action by attempting to liberate a presidential campaign worker and an underage prostitute.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//iXVaWbxmyPk4KZGZk5GGDGFieMX.jpg');
insert into movie_genres values ('115', 'Action'); 
insert into movie_genres values ('115', 'Drama'); 
insert into movie_genres values ('115', 'History'); 
insert into movie values ('116', 'The Sting', '1973', '02:09:00', 'Two grifters team up to pull off the ultimate con.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//ckmYng37zey8INYf6d10cVgIG93.jpg');
insert into movie_genres values ('116', 'Comedy'); 
insert into movie_genres values ('116', 'Crime'); 
insert into movie_genres values ('116', 'Drama'); 
insert into movie values ('117', 'A Clockwork Orange', '1971', '02:16:00', 'In the future, a sadistic gang leader is imprisoned and volunteers for a conduct-aversion experiment, but it doesn''t go as planned.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//4sHeTAp65WrSSuc05nRBKddhBxO.jpg');
insert into movie_genres values ('117', 'Science Fiction'); 
insert into movie_genres values ('117', 'Crime'); 
insert into movie values ('118', '2001: A Space Odyssey', '1968', '02:29:00', 'After discovering a mysterious artifact buried beneath the Lunar surface, mankind sets off on a quest to find its origins with help from intelligent supercomputer H.A.L. 9000.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//ve72VxNqjGM69Uky4WTo2bK6rfq.jpg');
insert into movie_genres values ('118', 'Science Fiction'); 
insert into movie_genres values ('118', 'Mystery'); 
insert into movie_genres values ('118', 'Adventure'); 
insert into movie values ('119', 'Per qualche dollaro in pi�', '1965', '02:12:00', 'Two bounty hunters with the same intentions team up to track down a Western outlaw.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//ooqASvA7qxlTVKL3KwOzBwy57Dh.jpg');
insert into movie_genres values ('119', 'Western'); 
insert into movie values ('120', 'Lawrence of Arabia', '1962', '03:48:00', 'The story of T.E. Lawrence, the English officer who successfully united and led the diverse, often warring, Arab tribes during World War I in order to fight the Turks.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//AiAm0EtDvyGqNpVoieRw4u65vD1.jpg');
insert into movie_genres values ('120', 'Adventure'); 
insert into movie_genres values ('120', 'History'); 
insert into movie_genres values ('120', 'War'); 
insert into movie values ('121', 'The Apartment', '1960', '02:05:00', 'A man tries to rise in his company by letting its executives use his apartment for trysts, but complications and a romance of his own ensue.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//hhSRt1KKfRT0yEhEtRW3qp31JFU.jpg');
insert into movie_genres values ('121', 'Comedy'); 
insert into movie_genres values ('121', 'Drama'); 
insert into movie_genres values ('121', 'Romance'); 
insert into movie values ('122', 'North by Northwest', '1959', '02:16:00', 'A New York City advertising executive goes on the run after being mistaken for a government agent by a group of foreign spies.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//kNOFPQrel9YFCVzI0DF8FnCEpCw.jpg');
insert into movie_genres values ('122', 'Thriller'); 
insert into movie_genres values ('122', 'Adventure'); 
insert into movie values ('123', 'Vertigo', '1958', '02:08:00', 'A former police detective juggles wrestling with his personal demons and becoming obsessed with a hauntingly beautiful woman.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//15uOEfqBNTVtDUT7hGBVCka0rZz.jpg');
insert into movie_genres values ('123', 'Mystery'); 
insert into movie_genres values ('123', 'Romance'); 
insert into movie_genres values ('123', 'Thriller'); 
insert into movie values ('124', 'Singin'' in the Rain', '1952', '01:43:00', 'A silent film production company and cast make a difficult transition to sound.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//w03EiJVHP8Un77boQeE7hg9DVdU.jpg');
insert into movie_genres values ('124', 'Comedy'); 
insert into movie_genres values ('124', 'Romance'); 
insert into movie values ('125', 'Ikiru', '1952', '02:23:00', 'A bureaucrat tries to find a meaning in his life after he discovers he has terminal cancer.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//gIZUUOsVkJ95CWv3N6uXWnuCRUO.jpg');
insert into movie_genres values ('125', 'TV Movie'); 
insert into movie values ('126', 'Ladri di biciclette', '1948', '01:29:00', 'In post-war Italy, a working-class man''s bicycle is stolen. He and his son set out to find it.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//abmxGiCV04NQj4jngbSQTGLgiC1.jpg');
insert into movie_genres values ('126', 'Drama'); 
insert into movie values ('127', 'Double Indemnity', '1944', '01:47:00', 'An insurance representative lets himself be talked by a seductive housewife into a murder/insurance fraud scheme that arouses the suspicion of an insurance investigator.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//rVNYZZgfhwqVMMWlBmxOfWqnwCj.jpg');
insert into movie_genres values ('127', 'Crime'); 
insert into movie_genres values ('127', 'Thriller'); 
insert into movie values ('128', 'Citizen Kane', '1941', '01:59:00', 'Following the death of publishing tycoon Charles Foster Kane, reporters scramble to uncover the meaning of his final utterance; ''Rosebud''.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//sav0jxhqiH0bPr2vZFU0Kjt2nZL.jpg');
insert into movie_genres values ('128', 'Mystery'); 
insert into movie_genres values ('128', 'Drama'); 
insert into movie values ('129', 'M - Eine Stadt sucht einen M�rder', '1931', '01:57:00', 'When the police in a German city are unable to catch a child-murderer, other criminals join in the manhunt.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//bTdZk3q2DWpBRnLiaaItKFWOVhI.jpg');
insert into movie_genres values ('129', 'Drama'); 
insert into movie_genres values ('129', 'Thriller'); 
insert into movie_genres values ('129', 'Crime'); 
insert into movie values ('130', 'Metropolis', '1927', '02:33:00', 'In a futuristic city sharply divided between the working class and the city planners, the son of the city''s mastermind falls in love with a working-class prophet who predicts the coming of a savior to mediate their differences.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//vZIJxGnjcswPCAa52jhbl01FQkV.jpg');
insert into movie_genres values ('130', 'Drama'); 
insert into movie_genres values ('130', 'Science Fiction'); 
insert into movie values ('131', 'The Kid', '1921', '01:08:00', 'The Tramp cares for an abandoned child, but events put that relationship in jeopardy.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//kMRZhiF08nDiO5aRb81Np5a4d6p.jpg');
insert into movie_genres values ('131', 'Fantasy'); 
insert into movie_genres values ('131', 'Comedy'); 
insert into movie_genres values ('131', 'Family'); 
insert into movie values ('132', 'Chhichhore', '2019', '02:23:00', 'A tragic incident forces Anirudh, a middle-aged man, to take a trip down memory lane and reminisce his college days along with his friends, who were labelled as losers.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//cGDPQtQ5igtPMt3oJ6BCAor6dFp.jpg');
insert into movie_genres values ('132', 'Romance'); 
insert into movie_genres values ('132', 'Comedy'); 
insert into movie_genres values ('132', 'Drama'); 
insert into movie values ('133', 'Uri: The Surgical Strike', '2018', '02:18:00', 'Indian army special forces execute a covert operation, avenging the killing of fellow army men at their base by a terrorist group.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//yNySAgpAnWmPpYinim9E0tUzJWG.jpg');
insert into movie_genres values ('133', 'Action'); 
insert into movie_genres values ('133', 'Drama'); 
insert into movie_genres values ('133', 'War'); 
insert into movie values ('134', 'K.G.F: Chapter 1', '2018', '02:36:00', 'In the 1970s, a fierce rebel rises against brutal oppression and becomes the symbol of hope to legions of downtrodden people.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//ltHlJwvxKv7d0ooCiKSAvfwV9tX.jpg');
insert into movie_genres values ('134', 'Action'); 
insert into movie_genres values ('134', 'Thriller'); 
insert into movie_genres values ('134', 'Adventure'); 
insert into movie_genres values ('134', 'Crime'); 
insert into movie values ('135', 'Green Book', '2018', '02:10:00', 'A working-class Italian-American bouncer becomes the driver of an African-American classical pianist on a tour of venues through the 1960s American South.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//7BsvSuDQuoqhWmU2fL7W2GOcZHU.jpg');
insert into movie_genres values ('135', 'Drama'); 
insert into movie_genres values ('135', 'History'); 
insert into movie values ('136', 'Three Billboards Outside Ebbing, Missouri', '2017', '01:55:00', 'A mother personally challenges the local authorities to solve her daughter''s murder when they fail to catch the culprit.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//uGMM9ZObmPUFrGqcbFMVyv8L1lU.jpg');
insert into movie_genres values ('136', 'Crime'); 
insert into movie_genres values ('136', 'Drama'); 
insert into movie values ('137', 'Talvar', '2015', '02:12:00', 'An experienced investigator confronts several conflicting theories about the perpetrators of a violent double homicide.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//vye2RxyxXKeTIJBSHo0HkvFuTCR.jpg');
insert into movie_genres values ('137', 'Thriller'); 
insert into movie_genres values ('137', 'Drama'); 
insert into movie_genres values ('137', 'Mystery'); 
insert into movie values ('138', 'Baahubali 2: The Conclusion', '2017', '02:47:00', 'When Shiva, the son of Bahubali, learns about his heritage, he begins to look for answers. His story is juxtaposed with past events that unfolded in the Mahishmati Kingdom.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//xQ22LOWSkClP3maYhR9nZH0dnWM.jpg');
insert into movie_genres values ('138', 'Action'); 
insert into movie_genres values ('138', 'Adventure'); 
insert into movie_genres values ('138', 'Fantasy'); 
insert into movie values ('139', 'Klaus', '2019', '01:36:00', 'A simple act of kindness always sparks another, even in a frozen, faraway place. When Smeerensburg''s new postman, Jesper, befriends toymaker Klaus, their gifts melt an age-old feud and deliver a sleigh full of holiday traditions.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//q125RHUDgR4gjwh1QkfYuJLYkL.jpg');
insert into movie_genres values ('139', 'Animation'); 
insert into movie_genres values ('139', 'Family'); 
insert into movie_genres values ('139', 'Adventure'); 
insert into movie_genres values ('139', 'Comedy'); 
insert into movie_genres values ('139', 'Fantasy'); 
insert into movie values ('140', 'Drishyam', '2015', '02:43:00', 'Desperate measures are taken by a man who tries to save his family from the dark side of the law, after they commit an unexpected crime.', 'https://m.media-amazon.com/images/M/MV5BYmJhZmJlYTItZmZlNy00MGY0LTg0ZGMtNWFkYWU5NTA1YTNhXkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_UY98_CR0,0,67,98_AL_.jpg');
insert into movie_genres values ('140', 'Thriller'); 
insert into movie values ('141', 'Queen', '2013', '02:26:00', 'A Delhi girl from a traditional family sets out on a solo honeymoon after her marriage gets cancelled.', 'https://m.media-amazon.com/images/M/MV5BNWYyOWRlOWItZWM5MS00ZjJkLWI0MTUtYTE3NTI5MDAwYjgyXkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_UY98_CR0,0,67,98_AL_.jpg');
insert into movie_genres values ('141', 'Drama'); 
insert into movie values ('142', 'Mandariinid', '2013', '01:27:00', 'In 1992, war rages in Abkhazia, a breakaway region of Georgia. An Estonian man Ivo has decided to stay behind and harvest his crops of tangerines. In a bloody conflict at his door, a wounded man is left behind, and Ivo takes him in.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//jNKUXcwZr1vpgq7sGTCEqdngo4Z.jpg');
insert into movie_genres values ('142', 'Drama'); 
insert into movie_genres values ('142', 'War'); 
insert into movie values ('143', 'Bhaag Milkha Bhaag', '2013', '03:06:00', 'The truth behind the ascension of Milkha Singh who was scarred because of the India-Pakistan partition.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//bXywc0CEzS1fIshPWWi4V8A58U3.jpg');
insert into movie_genres values ('143', 'History'); 
insert into movie_genres values ('143', 'Drama'); 
insert into movie values ('144', 'Gangs of Wasseypur', '2012', '05:21:00', 'A clash between Sultan and Shahid Khan leads to the expulsion of Khan from Wasseypur, and ignites a deadly blood feud spanning three generations.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//4CVPyT10Cvw9BCgWNKXiRcXntuc.jpg');
insert into movie_genres values ('144', 'Crime'); 
insert into movie_genres values ('144', 'Thriller'); 
insert into movie_genres values ('144', 'Action'); 
insert into movie values ('145', 'Udaan', '2010', '02:14:00', 'Expelled from his school, a 16-year old boy returns home to his abusive and oppressive father.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//eWszaR1TBt0ekGlgF7Sm2rMoY4E.jpg');
insert into movie_genres values ('145', 'Action'); 
insert into movie_genres values ('145', 'Drama'); 
insert into movie_genres values ('145', 'Crime'); 
insert into movie_genres values ('145', 'Thriller'); 
insert into movie values ('146', 'Paan Singh Tomar', '2012', '02:15:00', 'The story of Paan Singh Tomar, an Indian athlete and seven-time national steeplechase champion who becomes one of the most feared dacoits in Chambal Valley after his retirement.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//ii2KMVvGmcmJrqwYcT5nKn92bD5.jpg');
insert into movie_genres values ('146', 'Crime'); 
insert into movie_genres values ('146', 'Drama'); 
insert into movie values ('147', 'El secreto de sus ojos', '2009', '02:09:00', 'A retired legal counselor writes a novel hoping to find closure for one of his past unresolved homicide cases and for his unreciprocated love with his superior - both of which still haunt him decades later.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//dkeAwfZzwL3WvToydE3CXiY80E0.jpg');
insert into movie_genres values ('147', 'Mystery'); 
insert into movie_genres values ('147', 'Thriller'); 
insert into movie_genres values ('147', 'Drama'); 
insert into movie values ('148', 'Warrior', '2011', '02:20:00', 'The youngest son of an alcoholic former boxer returns home, where he''s trained by his father for competition in a mixed martial arts tournament - a path that puts the fighter on a collision course with his estranged, older brother.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//iM8n4nZJPR2abpnyZ36FUgHiRjr.jpg');
insert into movie_genres values ('148', 'Drama'); 
insert into movie_genres values ('148', 'Action'); 
insert into movie values ('149', 'Shutter Island', '2010', '02:18:00', 'In 1954, a U.S. Marshal investigates the disappearance of a murderer who escaped from a hospital for the criminally insane.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//nrmXQ0zcZUL8jFLrakWc90IR8z9.jpg');
insert into movie_genres values ('149', 'Drama'); 
insert into movie_genres values ('149', 'Thriller'); 
insert into movie_genres values ('149', 'Mystery'); 
insert into movie values ('150', 'Up', '2009', '01:36:00', '78-year-old Carl Fredricksen travels to Paradise Falls in his house equipped with balloons, inadvertently taking a young stowaway.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//kU6wvyu8yxIf7IynQmn8P0Gi6fN.jpg');
insert into movie_genres values ('150', 'Comedy'); 
insert into movie values ('151', 'The Wolf of Wall Street', '2013', '03:00:00', 'Based on the true story of Jordan Belfort, from his rise to a wealthy stock-broker living the high life to his fall involving crime, corruption and the federal government.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//kW9LmvYHAaS9iA0tHmZVq8hQYoq.jpg');
insert into movie_genres values ('151', 'Crime'); 
insert into movie_genres values ('151', 'Drama'); 
insert into movie_genres values ('151', 'Comedy'); 
insert into movie values ('152', 'Chak De! India', '2007', '02:33:00', 'Kabir Khan is the coach of the Indian Women''s National Hockey Team and his dream is to make his all girls team emerge victorious against all odds.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//mmFMgEsTRCAGAtwffGpuo3mJsxN.jpg');
insert into movie_genres values ('152', 'Drama'); 
insert into movie values ('153', 'There Will Be Blood', '2007', '02:38:00', 'A story of family, religion, hatred, oil and madness, focusing on a turn-of-the-century prospector in the early days of the business.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//nuZDiX8okojcwkStdaMjA9LUQAT.jpg');
insert into movie_genres values ('153', 'Drama'); 
insert into movie values ('154', 'Pan''s Labyrinth', '2006', '01:58:00', 'In the Falangist Spain of 1944, the bookish young stepdaughter of a sadistic army officer escapes into an eerie but captivating fantasy world.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//s8C4whhKtDaJvMDcyiMvx3BIF5F.jpg');
insert into movie_genres values ('154', 'Fantasy'); 
insert into movie_genres values ('154', 'Drama'); 
insert into movie_genres values ('154', 'War'); 
insert into movie values ('155', 'Toy Story 3', '2010', '01:43:00', 'The toys are mistakenly delivered to a day-care center instead of the attic right before Andy leaves for college, and it\'s up to Woody to convince the other toys that they weren\'t abandoned and to return home.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//AbbXspMOwdvwWZgVN0nabZq03Ec.jpg');
insert into movie_genres values ('155', 'Animation'); 
insert into movie_genres values ('155', 'Family'); 
insert into movie_genres values ('155', 'Comedy'); 
insert into movie values ('156', 'V for Vendetta', '2005', '02:12:00', 'In a future British tyranny, a shadowy freedom fighter, known only by the alias of "V", plots to overthrow it with the help of a young woman.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//khYByQchu7O8yyrT1xcGKOmgdHk.jpg');
insert into movie_genres values ('156', 'Action'); 
insert into movie_genres values ('156', 'Thriller'); 
insert into movie_genres values ('156', 'Science Fiction'); 
insert into movie values ('157', 'Rang De Basanti', '2006', '02:47:00', 'The story of six young Indians who assist an English woman to film a documentary on the freedom fighters from their past, and the events that lead them to relive the long-forgotten saga of freedom.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//f1bF8CHzEu621bPSIg6XiUNAabh.jpg');
insert into movie_genres values ('157', 'Comedy'); 
insert into movie_genres values ('157', 'Drama'); 
insert into movie_genres values ('157', 'History'); 
insert into movie_genres values ('157', 'Romance'); 
insert into movie values ('158', 'Black', '2005', '02:02:00', 'The cathartic tale of a young woman who can''t see, hear or talk and the teacher who brings a ray of light into her dark world.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//59iN2DBm5tzKsmI58xUgK3FtgRr.jpg');
insert into movie_genres values ('158', 'Action'); 
insert into movie_genres values ('158', 'Drama'); 
insert into movie values ('159', 'Batman Begins', '2005', '02:20:00', 'After training with his mentor, Batman begins his fight to free crime-ridden Gotham City from corruption.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//4MpN4kIEqUjW8OPtOQJXlTdHiJV.jpg');
insert into movie_genres values ('159', 'Action'); 
insert into movie_genres values ('159', 'Crime'); 
insert into movie_genres values ('159', 'Drama'); 
insert into movie values ('160', 'Swades: We, the People', '2004', '03:30:00', 'A successful Indian scientist returns to an Indian village to take his nanny to America with him and in the process rediscovers his roots.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//yUSL24kpHc9Nls4Pohia4shgcIM.jpg');
insert into movie_genres values ('160', 'Drama'); 
insert into movie values ('161', 'Der Untergang', '2004', '02:36:00', 'Traudl Junge, the final secretary for Adolf Hitler, tells of the Nazi dictator''s final days in his Berlin bunker at the end of WWII.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//cP1ElGjBhbZAAqmueXjHDKlSwiP.jpg');
insert into movie_genres values ('161', 'Drama'); 
insert into movie_genres values ('161', 'History'); 
insert into movie_genres values ('161', 'War'); 
insert into movie values ('162', 'Hauru no ugoku shiro', '2004', '01:59:00', 'When an unconfident young woman is cursed with an old body by a spiteful witch, her only chance of breaking the spell lies with a self-indulgent yet insecure young wizard and his companions in his legged, walking castle.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//23hUJh7JdO23SpgUB5oiFDQk2wX.jpg');
insert into movie_genres values ('162', 'Fantasy'); 
insert into movie_genres values ('162', 'Animation'); 
insert into movie_genres values ('162', 'Adventure'); 
insert into movie values ('163', 'A Beautiful Mind', '2001', '02:15:00', 'After John Nash, a brilliant but asocial mathematician, accepts secret work in cryptography, his life takes a turn for the nightmarish.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//rEIg5yJdNOt9fmX4P8gU9LeNoTQ.jpg');
insert into movie_genres values ('163', 'Drama'); 
insert into movie_genres values ('163', 'Romance'); 
insert into movie values ('164', 'Hera Pheri', '2000', '02:36:00', 'Three unemployed men look for answers to all their money problems - but when their opportunity arrives, will they know what to do with it?', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//23MKGUPT5laTStim4TaGhfgSltu.jpg');
insert into movie_genres values ('164', 'Comedy'); 
insert into movie_genres values ('164', 'Crime'); 
insert into movie values ('165', 'Lock, Stock and Two Smoking Barrels', '1998', '01:47:00', 'A botched card game in London triggers four friends, thugs, weed-growers, hard gangsters, loan sharks and debt collectors to collide with each other in a series of unexpected events, all for the sake of weed, cash and two antique shotguns.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//wt2TRBmFmBn5M5MBcPTwovlREaB.jpg');
insert into movie_genres values ('165', 'Comedy'); 
insert into movie_genres values ('165', 'Crime'); 
insert into movie values ('166', 'L.A. Confidential', '1997', '02:18:00', 'As corruption grows in 1950s Los Angeles, three policemen - one strait-laced, one brutal, and one sleazy - investigate a series of murders with their own brand of justice.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//lWCgf5sD5FpMljjpkRhcC8pXcch.jpg');
insert into movie_genres values ('166', 'Crime'); 
insert into movie_genres values ('166', 'Mystery'); 
insert into movie_genres values ('166', 'Thriller'); 
insert into movie_genres values ('166', 'Drama'); 
insert into movie values ('167', 'Eskiya', '1996', '02:08:00', 'Baran the Bandit, released from prison after 35 years, searches for vengeance and his lover.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//nRr6jmqHczMCS3UfZLGQr5pksmd.jpg');
insert into movie_genres values ('167', 'Crime'); 
insert into movie_genres values ('167', 'Drama'); 
insert into movie_genres values ('167', 'Thriller'); 
insert into movie values ('168', 'Heat', '1995', '02:50:00', 'A group of professional bank robbers start to feel the heat from police when they unknowingly leave a clue at their latest heist.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//umSVjVdbVwtx5ryCA2QXL44Durm.jpg');
insert into movie_genres values ('168', 'Crime'); 
insert into movie_genres values ('168', 'Drama'); 
insert into movie_genres values ('168', 'Action'); 
insert into movie values ('169', 'Casino', '1995', '02:58:00', 'A tale of greed, deception, money, power, and murder occur between two best friends: a mafia enforcer and a casino executive compete against each other over a gambling empire, and over a fast-living and fast-loving socialite.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//gziIkUSnYuj9ChCi8qOu2ZunpSC.jpg');
insert into movie_genres values ('169', 'Crime'); 
insert into movie_genres values ('169', 'Drama'); 
insert into movie values ('170', 'Andaz Apna Apna', '1994', '02:40:00', 'Two slackers competing for the affections of an heiress inadvertently become her protectors from an evil criminal.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//l1tE1GspvcyeYSfKxmnh8DObnzG.jpg');
insert into movie_genres values ('170', 'Comedy'); 
insert into movie_genres values ('170', 'Romance'); 
insert into movie_genres values ('170', 'Family'); 
insert into movie values ('171', 'Unforgiven', '1992', '02:10:00', 'Retired Old West gunslinger William Munny reluctantly takes on one last job, with the help of his old partner Ned Logan and a young man, The "Schofield Kid."', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//54roTwbX9fltg85zjsmrooXAs12.jpg');
insert into movie_genres values ('171', 'Western'); 
insert into movie values ('172', 'Indiana Jones and the Last Crusade', '1989', '02:07:00', 'In 1938, after his father Professor Henry Jones, Sr. goes missing while pursuing the Holy Grail, Professor Henry "Indiana" Jones, Jr. finds himself up against Adolf Hitler''s Nazis again to stop them from obtaining its powers.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//sizg1AU8f8JDZX4QIgE4pjUMBvx.jpg');
insert into movie_genres values ('172', 'Adventure'); 
insert into movie_genres values ('172', 'Action'); 
insert into movie values ('173', 'Dom za vesanje', '1988', '02:22:00', 'In this luminous tale set in the area around Sarajevo and in Italy, Perhan, an engaging young Romany (gypsy) with telekinetic powers, is seduced by the quick-cash world of petty crime, which threatens to destroy him and those he loves.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//fF9kWNMjiXC6f4YrdVFA0ScnWgQ.jpg');
insert into movie_genres values ('173', 'Drama'); 
insert into movie_genres values ('173', 'Comedy'); 
insert into movie_genres values ('173', 'Crime'); 
insert into movie_genres values ('173', 'Fantasy'); 
insert into movie values ('174', 'Tonari no Totoro', '1988', '01:26:00', 'When two girls move to the country to be near their ailing mother, they have adventures with the wondrous forest spirits who live nearby.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//rtGDOeG9LzoerkDGZF9dnVeLppL.jpg');
insert into movie_genres values ('174', 'Fantasy'); 
insert into movie_genres values ('174', 'Animation'); 
insert into movie_genres values ('174', 'Family'); 
insert into movie values ('175', 'Die Hard', '1988', '02:12:00', 'An NYPD officer tries to save his wife and several others taken hostage by German terrorists during a Christmas party at the Nakatomi Plaza in Los Angeles.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//1NnCbaFaWgHczKjH5Eii46VmpPp.jpg');
insert into movie_genres values ('175', 'Action'); 
insert into movie_genres values ('175', 'Thriller'); 
insert into movie values ('176', 'Ran', '1985', '02:42:00', 'In Medieval Japan, an elderly warlord retires, handing over his empire to his three sons. However, he vastly underestimates how the new-found power will corrupt them and cause them to turn on each other...and him.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//FepaiApo8Yr6pNIZIeYG5kW06J.jpg');
insert into movie values ('177', 'Raging Bull', '1980', '02:09:00', 'The life of boxer Jake LaMotta, whose violence and temper that led him to the top in the ring destroyed his life outside of it.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//1WV7WlTS8LI1L5NkCgjWT9GSW3O.jpg');
insert into movie_genres values ('177', 'Drama'); 
insert into movie values ('178', 'Stalker', '1979', '02:42:00', 'A guide leads two men through an area known as the Zone to find a room that grants wishes.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//g6aZ3KUntef8IbT16uMNSkcUPe1.jpg');
insert into movie_genres values ('178', 'Horror'); 
insert into movie_genres values ('178', 'Thriller'); 
insert into movie values ('179', 'Hostsonaten', '1978', '01:39:00', 'A married daughter who longs for her mother''s love is visited by the latter, a successful concert pianist.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//6beNbtCXv3GkzHkxkGYf38ib7v8.jpg');
insert into movie_genres values ('179', 'Drama'); 
insert into movie values ('180', 'The Message', '1976', '02:57:00', 'This epic historical drama chronicles the life and times of Prophet Muhammad and serves as an introduction to early Islamic history.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//5ztMGggVOOouDcTj96vNU6dyyU9.jpg');
insert into movie_genres values ('180', 'Adventure'); 
insert into movie_genres values ('180', 'Drama'); 
insert into movie_genres values ('180', 'Action'); 
insert into movie_genres values ('180', 'History'); 
insert into movie values ('181', 'Sholay', '1975', '03:24:00', 'After his family is murdered by a notorious and ruthless bandit, a former police officer enlists the services of two outlaws to capture the bandit.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//ya9bwgqA4eNl5bQ9QqS0jcmRoBS.jpg');
insert into movie_genres values ('181', 'Action'); 
insert into movie values ('182', 'Monty Python and the Holy Grail', '1975', '01:31:00', 'King Arthur and his Knights of the Round Table embark on a surreal, low-budget search for the Holy Grail, encountering many, very silly obstacles.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//hWx1ANiWEWWyzKPN0us35HCGnhQ.jpg');
insert into movie_genres values ('182', 'Adventure'); 
insert into movie_genres values ('182', 'Comedy'); 
insert into movie_genres values ('182', 'Fantasy'); 
insert into movie values ('183', 'The Great Escape', '1963', '02:52:00', 'Allied prisoners of war plan for several hundred of their number to escape from a German camp during World War II.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//gBH4H8UMFxl139HaLz6lRuvsel8.jpg');
insert into movie_genres values ('183', 'Adventure'); 
insert into movie_genres values ('183', 'Drama'); 
insert into movie_genres values ('183', 'War'); 
insert into movie values ('184', 'To Kill a Mockingbird', '1962', '02:09:00', 'Atticus Finch, a lawyer in the Depression-era South, defends a black man against an undeserved rape charge, and his children against prejudice.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//gZycFUMLx2110dzK3nBNai7gfpM.jpg');
insert into movie_genres values ('184', 'Drama'); 
insert into movie values ('185', 'Y�jinb�', '1961', '01:50:00', 'A crafty ronin comes to a town divided by two criminal gangs and decides to play them against each other to free the town.', 'https://m.media-amazon.com/images/M/MV5BZThiZjAzZjgtNDU3MC00YThhLThjYWUtZGRkYjc2ZWZlOTVjXkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_UX67_CR0,0,67,98_AL_.jpg');
insert into movie values ('186', 'Judgment at Nuremberg', '1961', '02:59:00', 'In 1948, an American court in occupied Germany tries four Nazis judged for war crimes.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//b6vYatvui1EXeFYfpDX4rcbueuP.jpg');
insert into movie_genres values ('186', 'Drama'); 
insert into movie_genres values ('186', 'History'); 
insert into movie values ('187', 'Some Like It Hot', '1959', '02:01:00', 'After two male musicians witness a mob hit, they flee the state in an all-female band disguised as women, but further complications set in.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//hVIKyTK13AvOGv7ICmJjK44DTzp.jpg');
insert into movie_genres values ('187', 'Comedy'); 
insert into movie_genres values ('187', 'Romance'); 
insert into movie_genres values ('187', 'Crime'); 
insert into movie values ('188', 'Smultronst�llet', '1957', '01:31:00', 'After living a life marked by coldness, an aging professor is forced to confront the emptiness of his existence.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//iyTD2QnySNMPUPE3IedZQipSWfz.jpg');
insert into movie_genres values ('188', 'Drama'); 
insert into movie values ('189', 'Det sjunde inseglet', '1957', '01:36:00', 'A man seeks answers about life, death, and the existence of God as he plays chess against the Grim Reaper during the Black Plague.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//wcZ21zrOsy0b52AfAF50XpTiv75.jpg');
insert into movie_genres values ('189', 'Fantasy'); 
insert into movie_genres values ('189', 'Drama'); 
insert into movie values ('190', 'Du rififi chez les hommes', '1955', '01:58:00', 'Four men plan a technically perfect crime, but the human element intervenes...', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//heVdAFNZUxXVmO6jiJcEHCvI5lK.jpg');
insert into movie_genres values ('190', 'Crime'); 
insert into movie_genres values ('190', 'Thriller'); 
insert into movie_genres values ('190', 'Drama'); 
insert into movie values ('191', 'Dial M for Murder', '1954', '01:45:00', 'A former tennis player tries to arrange his wife''s murder after learning of her affair.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//2gDCAgl2iBQNuJuk6p2xtuS1ewg.jpg');
insert into movie_genres values ('191', 'Thriller'); 
insert into movie_genres values ('191', 'Crime'); 
insert into movie_genres values ('191', 'Drama'); 
insert into movie_genres values ('191', 'Mystery'); 
insert into movie values ('192', 'Tokyo monogatari', '1953', '02:16:00', 'An old couple visit their children and grandchildren in the city, but receive little attention.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//oKO9p7vHtPPYzvoQogSn1fB5GEj.jpg');
insert into movie values ('193', 'Rashomon', '1950', '01:28:00', 'The rape of a bride and the murder of her samurai husband are recalled from the perspectives of a bandit, the bride, the samurai''s ghost and a woodcutter.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//vL7Xw04nFMHwnvXRFCmYYAzMUvY.jpg');
insert into movie_genres values ('193', 'Crime'); 
insert into movie_genres values ('193', 'Drama'); 
insert into movie_genres values ('193', 'Mystery'); 
insert into movie values ('194', 'All About Eve', '1950', '02:18:00', 'A seemingly timid but secretly ruthless ing�nue insinuates herself into the lives of an aging Broadway star and her circle of theater friends.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//qU5QzNDrsusmuqKW6FsSvHYoIEQ.jpg');
insert into movie_genres values ('194', 'Drama'); 
insert into movie values ('195', 'The Treasure of the Sierra Madre', '1948', '02:06:00', 'Two Americans searching for work in Mexico convince an old prospector to help them mine for gold in the Sierra Madre Mountains.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//pWcst7zVbi8Z8W6GFrdNE7HHRxL.jpg');
insert into movie_genres values ('195', 'Adventure'); 
insert into movie_genres values ('195', 'Drama'); 
insert into movie_genres values ('195', 'Western'); 
insert into movie values ('196', 'To Be or Not to Be', '1942', '01:39:00', 'During the Nazi occupation of Poland, an acting troupe becomes embroiled in a Polish soldier''s efforts to track down a German spy.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//dDQRpEoyjHT4fzw9cNklIvZuXYg.jpg');
insert into movie_genres values ('196', 'Comedy'); 
insert into movie_genres values ('196', 'War'); 
insert into movie_genres values ('196', 'Romance'); 
insert into movie values ('197', 'The Gold Rush', '1925', '01:35:00', 'A prospector goes to the Klondike in search of gold and finds it and more.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//eQRFo1qwRREYwj47Yoe1PisgOle.jpg');
insert into movie_genres values ('197', 'Adventure'); 
insert into movie_genres values ('197', 'Comedy'); 
insert into movie_genres values ('197', 'Drama'); 
insert into movie values ('198', 'Sherlock Jr.', '1924', '00:45:00', 'A film projectionist longs to be a detective, and puts his meagre skills to work when he is framed by a rival for stealing his girlfriend\'s father\'s pocketwatch.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//1G9r3rqtbFAQuyWKOZm4Y5J5s7Q.jpg');
insert into movie_genres values ('198', 'Action'); 
insert into movie_genres values ('198', 'Comedy'); 
insert into movie_genres values ('198', 'Mystery'); 
insert into movie values ('199', 'Portrait de la jeune fille en feu', '2019', '02:02:00', 'On an isolated island in Brittany at the end of the eighteenth century, a female painter is obliged to paint a wedding portrait of a young woman.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//2LquGwEhbg3soxSCs9VNyh5VJd9.jpg');
insert into movie_genres values ('199', 'Drama'); 
insert into movie_genres values ('199', 'Romance'); 
insert into movie_genres values ('199', 'History'); 
insert into movie values ('200', 'Pink', '2016', '02:16:00', 'When three young women are implicated in a crime, a retired lawyer steps forward to help them clear their names.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//eAWW4SdspgcZWvsFe0XjJArPnm5.jpg');
insert into movie_genres values ('200', 'Romance'); 
insert into movie_genres values ('200', 'Drama'); 
insert into movie_genres values ('200', 'Comedy'); 
insert into movie values ('201', 'Koe no katachi', '2016', '02:10:00', 'A young man is ostracized by his classmates after he bullies a deaf girl to the point where she moves away. Years later, he sets off on a path for redemption.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//tuFaWiqX0TXoWu7DGNcmX3UW7sT.jpg');
insert into movie_genres values ('201', 'Animation'); 
insert into movie_genres values ('201', 'Drama'); 
insert into movie_genres values ('201', 'Romance'); 
insert into movie values ('202', 'Contratiempo', '2016', '01:46:00', 'A successful entrepreneur accused of murder and a witness preparation expert have less than three hours to come up with an impregnable defense.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//fptnZJbLzKUHeNlYrAynbyoL5YJ.jpg');
insert into movie_genres values ('202', 'Drama'); 
insert into movie_genres values ('202', 'Mystery'); 
insert into movie_genres values ('202', 'Thriller'); 
insert into movie values ('203', 'Ah-ga-ssi', '2016', '02:25:00', 'A woman is hired as a handmaiden to a Japanese heiress, but secretly she is involved in a plot to defraud her.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//dLlH4aNHdnmf62umnInL8xPlPzw.jpg');
insert into movie_genres values ('203', 'Thriller'); 
insert into movie_genres values ('203', 'Drama'); 
insert into movie_genres values ('203', 'Romance'); 
insert into movie values ('204', 'Mommy', '2014', '02:19:00', 'A widowed single mother, raising her violent son alone, finds new hope when a mysterious neighbor inserts herself into their household.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//3zyQtPg3avKprmJP2gBiYgyWUQC.jpg');
insert into movie_genres values ('204', 'Drama'); 
insert into movie values ('205', 'Haider', '2014', '02:40:00', 'A young man returns to Kashmir after his father\'s disappearance to confront his uncle, whom he suspects of playing a role in his father\'s fate.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//lOCotkHPODWdsRDMoLbSdLdVT3L.jpg');
insert into movie_genres values ('205', 'Crime'); 
insert into movie_genres values ('205', 'Drama'); 
insert into movie values ('206', 'Logan', '2017', '02:17:00', 'In a future where mutants are nearly extinct, an elderly and weary Logan leads a quiet life. But when Laura, a mutant child pursued by scientists, comes to him for help, he must get her to safety.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//fnbjcRDYn6YviCcePDnGdyAkYsB.jpg');
insert into movie_genres values ('206', 'Action'); 
insert into movie_genres values ('206', 'Drama'); 
insert into movie_genres values ('206', 'Science Fiction'); 
insert into movie values ('207', 'Room', '2015', '01:58:00', 'Held captive for 7 years in an enclosed space, a woman and her young son finally gain their freedom, allowing the boy to experience the outside world for the first time.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//pCURNjeomWbMSdiP64gj8NVVHTQ.jpg');
insert into movie_genres values ('207', 'Drama'); 
insert into movie_genres values ('207', 'Thriller'); 
insert into movie values ('208', 'Relatos salvajes', '2014', '02:02:00', 'Six short stories that explore the extremities of human behavior involving people in distress.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//ucFsh8uU0Lsw7zouQFaRrs2ElOs.jpg');
insert into movie_genres values ('208', 'Drama'); 
insert into movie_genres values ('208', 'Thriller'); 
insert into movie_genres values ('208', 'Comedy'); 
insert into movie values ('209', 'Soul', '2020', '01:40:00', 'After landing the gig of a lifetime, a New York jazz pianist suddenly finds himself trapped in a strange land between Earth and the afterlife.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//pEz5aROvfy5FBW1OTlrDO3VryWO.jpg');
insert into movie_genres values ('209', 'Animation'); 
insert into movie_genres values ('209', 'Family'); 
insert into movie_genres values ('209', 'Comedy'); 
insert into movie_genres values ('209', 'Fantasy'); 
insert into movie values ('210', 'Kis Uykusu', '2014', '03:16:00', 'A hotel owner and landlord in a remote Turkish village deals with conflicts within his family and a tenant behind on his rent.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//d6iHm2jf7J1f5n23MprTOsrlMdr.jpg');
insert into movie_genres values ('210', 'Drama'); 
insert into movie values ('211', 'PK', '2014', '02:33:00', 'An alien on Earth loses the only device he can use to communicate with his spaceship. His innocent nature and child-like questions force the country to evaluate the impact of religion on its people.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//pzSN4XWmmU9uDeLu3aUw6OclGeD.jpg');
insert into movie_genres values ('211', 'Comedy'); 
insert into movie_genres values ('211', 'Drama'); 
insert into movie_genres values ('211', 'Family'); 
insert into movie values ('212', 'OMG: Oh My God!', '2012', '02:05:00', 'A shopkeeper takes God to court when his shop is destroyed by an earthquake.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//hzbvI96Kw1UlXfA0VxFhjaQDLU6.jpg');
insert into movie_genres values ('212', 'Comedy'); 
insert into movie_genres values ('212', 'Drama'); 
insert into movie_genres values ('212', 'Fantasy'); 
insert into movie values ('213', 'The Grand Budapest Hotel', '2014', '01:39:00', 'A writer encounters the owner of an aging high-class hotel, who tells him of his early years serving as a lobby boy in the hotel''s glorious years under an exceptional concierge.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//eWdyYQreja6JGCzqHWXpWHDrrPo.jpg');
insert into movie_genres values ('213', 'Comedy'); 
insert into movie_genres values ('213', 'Drama'); 
insert into movie values ('214', 'Gone Girl', '2014', '02:29:00', 'With his wife''s disappearance having become the focus of an intense media circus, a man sees the spotlight turned on him when it''s suspected that he may not be innocent.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//ts996lKsxvjkO2yiYG0ht4qAicO.jpg');
insert into movie_genres values ('214', 'Mystery'); 
insert into movie_genres values ('214', 'Thriller'); 
insert into movie_genres values ('214', 'Drama'); 
insert into movie values ('215', 'Ookami kodomo no Ame to Yuki', '2012', '01:57:00', 'After her werewolf lover unexpectedly dies in an accident while hunting for food for their children, a young woman must find ways to raise the werewolf son and daughter that she had with him while keeping their trait hidden from society.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//3Nllh6JgcrFdtOn6iFOWHudNInd.jpg');
insert into movie_genres values ('215', 'Animation'); 
insert into movie_genres values ('215', 'Family'); 
insert into movie_genres values ('215', 'Drama'); 
insert into movie_genres values ('215', 'Fantasy'); 
insert into movie values ('216', 'Hacksaw Ridge', '2016', '02:19:00', 'World War II American Army Medic Desmond T. Doss, who served during the Battle of Okinawa, refuses to kill people, and becomes the first man in American history to receive the Medal of Honor without firing a shot.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//jhWbYeUNOA5zAb6ufK6pXQFXqTX.jpg');
insert into movie_genres values ('216', 'Drama'); 
insert into movie_genres values ('216', 'History'); 
insert into movie_genres values ('216', 'War'); 
insert into movie values ('217', 'Inside Out', '2015', '01:35:00', 'After young Riley is uprooted from her Midwest life and moved to San Francisco, her emotions - Joy, Fear, Anger, Disgust and Sadness - conflict on how best to navigate a new city, house, and school.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//2H1TmgdfNtsKlU9jKdeNyYL5y8T.jpg');
insert into movie_genres values ('217', 'Animation'); 
insert into movie_genres values ('217', 'Family'); 
insert into movie_genres values ('217', 'Adventure'); 
insert into movie_genres values ('217', 'Drama'); 
insert into movie_genres values ('217', 'Comedy'); 
insert into movie values ('218', 'Barfi!', '2012', '02:31:00', 'Three young people learn that love can neither be defined nor contained by society''s definition of normal and abnormal.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//3dMcxaL0oD79nc31FQK5D7YZ3Kv.jpg');
insert into movie_genres values ('218', 'Drama'); 
insert into movie_genres values ('218', 'Romance'); 
insert into movie_genres values ('218', 'Comedy'); 
insert into movie values ('219', '12 Years a Slave', '2013', '02:14:00', 'In the antebellum United States, Solomon Northup, a free black man from upstate New York, is abducted and sold into slavery.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//xdANQijuNrJaw1HA61rDccME4Tm.jpg');
insert into movie_genres values ('219', 'Drama'); 
insert into movie_genres values ('219', 'History'); 
insert into movie values ('220', 'Rush', '2013', '02:03:00', 'The merciless 1970s rivalry between Formula One rivals James Hunt and Niki Lauda.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//5hpcfL3WH5ArSPUlfD4E1TtaOd0.jpg');
insert into movie_genres values ('220', 'Drama'); 
insert into movie_genres values ('220', 'Action'); 
insert into movie values ('221', 'Ford v Ferrari', '2019', '02:32:00', 'American car designer Carroll Shelby and driver Ken Miles battle corporate interference and the laws of physics to build a revolutionary race car for Ford in order to defeat Ferrari at the 24 Hours of Le Mans in 1966.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//dR1Ju50iudrOh3YgfwkAU1g2HZe.jpg');
insert into movie_genres values ('221', 'Drama'); 
insert into movie_genres values ('221', 'Action'); 
insert into movie_genres values ('221', 'History'); 
insert into movie values ('222', 'Spotlight', '2015', '02:09:00', 'The true story of how the Boston Globe uncovered the massive scandal of child molestation and cover-up within the local Catholic Archdiocese, shaking the entire Catholic Church to its core.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//olYvlO7lZLpUM62w1LYnAgdd6CD.jpg');
insert into movie_genres values ('222', 'Drama'); 
insert into movie_genres values ('222', 'History'); 
insert into movie values ('223', 'Song of the Sea', '2014', '01:33:00', 'Ben, a young Irish boy, and his little sister Saoirse, a girl who can turn into a seal, go on an adventure to free the fairies and save the spirit world.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//16LQC6zpqB0l74mVWb93a2oMFnX.jpg');
insert into movie_genres values ('223', 'Family'); 
insert into movie_genres values ('223', 'Animation'); 
insert into movie_genres values ('223', 'Fantasy'); 
insert into movie values ('224', 'Kahaani', '2012', '02:02:00', 'A pregnant woman''s search for her missing husband takes her from London to Kolkata, but everyone she questions denies having ever met him.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//vTQIqlxUkOuyf2UKhlM2OUaFGKz.jpg');
insert into movie_genres values ('224', 'Comedy'); 
insert into movie_genres values ('224', 'Drama'); 
insert into movie_genres values ('224', 'Family'); 
insert into movie_genres values ('224', 'Romance'); 
insert into movie values ('225', 'Zindagi Na Milegi Dobara', '2011', '02:35:00', 'Three friends decide to turn their fantasy vacation into reality after one of their friends gets engaged.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//hKO9O715wYxjkQSEv47giCYcyO8.jpg');
insert into movie_genres values ('225', 'Drama'); 
insert into movie_genres values ('225', 'Comedy'); 
insert into movie_genres values ('225', 'Romance'); 
insert into movie values ('226', 'Prisoners', '2013', '02:33:00', 'When Keller Dover''s daughter and her friend go missing, he takes matters into his own hands as the police pursue multiple leads and the pressure mounts.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//uhviyknTT5cEQXbn6vWIqfM4vGm.jpg');
insert into movie_genres values ('226', 'Drama'); 
insert into movie_genres values ('226', 'Thriller'); 
insert into movie_genres values ('226', 'Crime'); 
insert into movie values ('227', 'Mad Max: Fury Road', '2015', '02:00:00', 'In a post-apocalyptic wasteland, a woman rebels against a tyrannical ruler in search for her homeland with the aid of a group of female prisoners, a psychotic worshiper, and a drifter named Max.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//hA2ple9q4qnwxp3hKVNhroipsir.jpg');
insert into movie_genres values ('227', 'Action'); 
insert into movie_genres values ('227', 'Adventure'); 
insert into movie_genres values ('227', 'Science Fiction'); 
insert into movie values ('228', 'A Wednesday', '2008', '01:44:00', 'A retiring police officer reminisces about the most astounding day of his career. About a case that was never filed but continues to haunt him in his memories - the case of a man and a Wednesday.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//gVUSxtJM3arL5VIUIRNYde20EF0.jpg');
insert into movie_genres values ('228', 'Drama'); 
insert into movie_genres values ('228', 'Thriller'); 
insert into movie values ('229', 'Gran Torino', '2008', '01:56:00', 'Disgruntled Korean War veteran Walt Kowalski sets out to reform his neighbor, Thao Lor, a Hmong teenager who tried to steal Kowalski''s prized possession: a 1972 Gran Torino.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//zUybYvxWdAJy5hhYovsXtHSWI1l.jpg');
insert into movie_genres values ('229', 'Drama'); 
insert into movie values ('230', 'Harry Potter and the Deathly Hallows: Part 2', '2011', '02:10:00', 'Harry, Ron, and Hermione search for Voldemort''s remaining Horcruxes in their effort to destroy the Dark Lord as the final battle rages on at Hogwarts.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//c54HpQmuwXjHq2C9wmoACjxoom3.jpg');
insert into movie_genres values ('230', 'Fantasy'); 
insert into movie_genres values ('230', 'Adventure'); 
insert into movie values ('231', 'Okuribito', '2008', '02:10:00', 'A newly unemployed cellist takes a job preparing the dead for funerals.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//mms4nMZuPYOyEengRxCaEk7SXMd.jpg');
insert into movie_genres values ('231', 'Drama'); 
insert into movie values ('232', 'Hachi: A Dog''s Tale', '2009', '01:33:00', 'A college professor bonds with an abandoned dog he takes into his home.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//lsy3aEsEfYIHdLRk4dontZ4s85h.jpg');
insert into movie_genres values ('232', 'Drama'); 
insert into movie_genres values ('232', 'Family'); 
insert into movie values ('233', 'Mary and Max', '2009', '01:32:00', 'A tale of friendship between two unlikely pen pals: Mary, a lonely, eight-year-old girl living in the suburbs of Melbourne, and Max, a forty-four-year old, severely obese man living in New York.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//ebmsM382m9IClLUzKYY2U5biFwM.jpg');
insert into movie_genres values ('233', 'Animation'); 
insert into movie_genres values ('233', 'Comedy'); 
insert into movie_genres values ('233', 'Drama'); 
insert into movie values ('234', 'How to Train Your Dragon', '2010', '01:38:00', 'A hapless young Viking who aspires to hunt dragons becomes the unlikely friend of a young dragon himself, and learns there may be more to the creatures than he assumed.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//kXj2Qrfm994yLeuADqbOieU1mUH.jpg');
insert into movie_genres values ('234', 'Animation'); 
insert into movie_genres values ('234', 'Fantasy'); 
insert into movie_genres values ('234', 'Adventure'); 
insert into movie_genres values ('234', 'Action'); 
insert into movie_genres values ('234', 'Family'); 
insert into movie values ('235', 'Into the Wild', '2007', '02:28:00', 'After graduating from Emory University, top student and athlete Christopher McCandless abandons his possessions, gives his entire $24,000 savings account to charity and hitchhikes to Alaska to live in the wilderness. Along the way, Christopher encounters a series of characters that shape his life.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//jnLnLYP5pGDfri04gxtAqAvkHMw.jpg');
insert into movie_genres values ('235', 'Adventure'); 
insert into movie_genres values ('235', 'Drama'); 
insert into movie values ('236', 'No Country for Old Men', '2007', '02:02:00', 'Violence and mayhem ensue after a hunter stumbles upon a drug deal gone wrong and more than two million dollars in cash near the Rio Grande.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//bj1v6YKF8yHqA489VFfnQvOJpnc.jpg');
insert into movie_genres values ('236', 'Crime'); 
insert into movie_genres values ('236', 'Drama'); 
insert into movie_genres values ('236', 'Thriller'); 
insert into movie values ('237', 'Lage Raho Munna Bhai', '2006', '02:24:00', 'Munna Bhai embarks on a journey with Mahatma Gandhi in order to fight against a corrupt property dealer.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//lgSn1tXDstMXSHJYkSibKkHqW8y.jpg');
insert into movie_genres values ('237', 'Comedy'); 
insert into movie_genres values ('237', 'Drama'); 
insert into movie_genres values ('237', 'Romance'); 
insert into movie values ('238', 'Million Dollar Baby', '2004', '02:12:00', 'A determined woman works with a hardened boxing trainer to become a professional.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//jcfEqKdWF1zeyvECPqp3mkWLct2.jpg');
insert into movie_genres values ('238', 'Drama'); 
insert into movie values ('239', 'Hotel Rwanda', '2004', '02:01:00', 'Paul Rusesabagina, a hotel manager, houses over a thousand Tutsi refugees during their struggle against the Hutu militia in Rwanda, Africa.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//lOBsGSCBEZNdsiCNpoSG2S6xrdN.jpg');
insert into movie_genres values ('239', 'Drama'); 
insert into movie_genres values ('239', 'History'); 
insert into movie_genres values ('239', 'War'); 
insert into movie values ('240', 'Taegukgi hwinalrimyeo', '2004', '02:20:00', 'When two brothers are forced to fight in the Korean War, the elder decides to take the riskiest missions if it will help shield the younger from battle.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//vyG8qpimh3XSlxc6OmPq8LJRJl.jpg');
insert into movie_genres values ('240', 'Action'); 
insert into movie_genres values ('240', 'Adventure'); 
insert into movie_genres values ('240', 'Drama'); 
insert into movie_genres values ('240', 'History'); 
insert into movie_genres values ('240', 'War'); 
insert into movie values ('241', 'Before Sunset', '2004', '01:20:00', 'Nine years after Jesse and Celine first met, they encounter each other again on the French leg of Jesse''s book tour.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//94Yl2xVB7YIRK4IgA0RqYGiNgkB.jpg');
insert into movie_genres values ('241', 'Drama'); 
insert into movie_genres values ('241', 'Romance'); 
insert into movie values ('242', 'Munna Bhai M.B.B.S.', '2003', '02:36:00', 'A gangster sets out to fulfill his father''s dream of becoming a doctor.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//nZNUTxGsSB4nLEC9Bpa2xfu81qV.jpg');
insert into movie_genres values ('242', 'Comedy'); 
insert into movie_genres values ('242', 'Drama'); 
insert into movie values ('243', 'Salinui chueok', '2003', '02:11:00', 'In a small Korean province in 1986, two detectives struggle with the case of multiple young women being found raped and murdered by an unknown culprit.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//jcgUjx1QcupGzjntTVlnQ15lHqy.jpg');
insert into movie_genres values ('243', 'Crime'); 
insert into movie_genres values ('243', 'Drama'); 
insert into movie_genres values ('243', 'Thriller'); 
insert into movie values ('244', 'Dil Chahta Hai', '2001', '03:03:00', 'Three inseparable childhood friends are just out of college. Nothing comes between them - until they each fall in love, and their wildly different approaches to relationships creates tension.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//d5yjk7hbv8AK0DR0oJUrSGHMn9A.jpg');
insert into movie_genres values ('244', 'Drama'); 
insert into movie_genres values ('244', 'Romance'); 
insert into movie values ('245', 'Kill Bill: Vol. 1', '2003', '01:51:00', 'After awakening from a four-year coma, a former assassin wreaks vengeance on the team of assassins who betrayed her.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//v7TaX8kXMXs5yFFGR41guUDNcnB.jpg');
insert into movie_genres values ('245', 'Action'); 
insert into movie_genres values ('245', 'Crime'); 
insert into movie values ('246', 'Finding Nemo', '2003', '01:40:00', 'After his son is captured in the Great Barrier Reef and taken to Sydney, a timid clownfish sets out on a journey to bring him home.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//eHuGQ10FUzK1mdOY69wF5pGgEf5.jpg');
insert into movie_genres values ('246', 'Animation'); 
insert into movie_genres values ('246', 'Family'); 
insert into movie values ('247', 'Catch Me If You Can', '2002', '02:21:00', 'Barely 21 yet, Frank is a skilled forger who has passed as a doctor, lawyer and pilot. FBI agent Carl becomes obsessed with tracking down the con man, who only revels in the pursuit.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//sdYgEkKCDPWNU6KnoL4qd8xZ4w7.jpg');
insert into movie_genres values ('247', 'Drama'); 
insert into movie_genres values ('247', 'Crime'); 
insert into movie values ('248', 'Amores perros', '2000', '02:34:00', 'A horrific car accident connects three stories, each involving characters dealing with loss, regret, and life''s harsh realities, all in the name of love.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//tuyV4ceh80IBTbRJWX7jJ59UFxn.jpg');
insert into movie_genres values ('248', 'Drama'); 
insert into movie_genres values ('248', 'Thriller'); 
insert into movie values ('249', 'Monsters, Inc.', '2001', '01:32:00', 'In order to power the city, monsters have to scare children so that they scream. However, the children are toxic to the monsters, and after a child gets through, 2 monsters realize things may not be what they think.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//qjlbN6aK1qgeg3SspFVovT2D1Me.jpg');
insert into movie_genres values ('249', 'Animation'); 
insert into movie_genres values ('249', 'Comedy'); 
insert into movie_genres values ('249', 'Family'); 
insert into movie values ('250', 'Shin seiki Evangelion Gekij�-ban: Air/Magokoro wo, kimi ni', '1997', '01:27:00', 'Concurrent theatrical ending of the TV series Shin seiki evangerion (1995).', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//j6G24dqI4WgUtChhWjfnI4lnmiK.jpg');
insert into movie_genres values ('250', 'Animation'); 
insert into movie_genres values ('250', 'Science Fiction'); 
insert into movie_genres values ('250', 'Action'); 
insert into movie_genres values ('250', 'Drama'); 
insert into movie values ('251', 'Lagaan: Once Upon a Time in India', '2001', '03:44:00', 'The people of a small village in Victorian India stake their future on a game of cricket against their ruthless British rulers.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//yNX9lFRAFeNLNRIXdqZK9gYrYKa.jpg');
insert into movie_genres values ('251', 'Adventure'); 
insert into movie_genres values ('251', 'Drama'); 
insert into movie_genres values ('251', 'History'); 
insert into movie values ('252', 'The Sixth Sense', '1999', '01:47:00', 'A boy who communicates with spirits seeks the help of a disheartened child psychologist.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//vOyfUXNFSnaTk7Vk5AjpsKTUWsu.jpg');
insert into movie_genres values ('252', 'Mystery'); 
insert into movie_genres values ('252', 'Thriller'); 
insert into movie_genres values ('252', 'Drama'); 
insert into movie values ('253', 'La leggenda del pianista sull''oceano', '1998', '02:49:00', 'A baby boy, discovered in 1900 on an ocean liner, grows into a musical prodigy, never setting foot on land.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//iOcbJ5pxokOPDRgieVDbsFMrCc6.jpg');
insert into movie_genres values ('253', 'Drama'); 
insert into movie_genres values ('253', 'Music'); 
insert into movie values ('254', 'The Truman Show', '1998', '01:43:00', 'An insurance salesman discovers his whole life is actually a reality TV show.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//vuza0WqY239yBXOadKlGwJsZJFE.jpg');
insert into movie_genres values ('254', 'Comedy'); 
insert into movie_genres values ('254', 'Drama'); 
insert into movie values ('255', 'Crna macka, beli macor', '1998', '02:07:00', 'Matko and his son Zare live on the banks of the Danube river and get by through hustling and basically doing anything to make a living. In order to pay off a business debt Matko agrees to marry off Zare to the sister of a local gangster.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//gGtt1IQUAzEjOPS1xHoC9PDX2VT.jpg');
insert into movie_genres values ('255', 'Comedy'); 
insert into movie_genres values ('255', 'Romance'); 
insert into movie_genres values ('255', 'Crime'); 
insert into movie values ('256', 'The Big Lebowski', '1998', '01:57:00', 'Jeff "The Dude" Lebowski, mistaken for a millionaire of the same name, seeks restitution for his ruined rug and enlists his bowling buddies to help get it.', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2//9mprbw31MGdd66LR0AQKoDMoFRv.jpg');
insert into movie_genres values ('256', 'Comedy'); 
insert into movie_genres values ('256', 'Crime'); 

-- Setup dummy users
-- actual user is username:root, pass:password
insert into user values ('0', 'root', '$2y$10$iXMUSlYquk/cDhIQja0uQecNOX6iYNa5.T3nrmhSRMDk3CEVEDWze', 'john.doe@example.com', '2025-03-27', NULL, 'https://i.pinimg.com/474x/86/a7/c5/86a7c53d7641badcd8f99bed3abd0a1f.jpg');  -- this password is 'password'
insert into user values ('1', 'Not Michael', 'password_tmp', 'john.doe@example.com', '2025-03-27', NULL, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBw0NCw0OEA0JCQgKCRYLCgoLBhsIFQ0WIB0iIiAdHx8kKDQsJCYxJx8fLT0tMSkrLi4uFx8zODMsNygtLisBCgoKDQ0NFRAPFTcZHhk3KzcrKzctKy0vKys3LS0tODcrLSstKystLSsrNystKy0rLSsrLSsrKysrKysrKysrK//AABEIAIAAgAMBIgACEQEDEQH/xAAbAAABBQEBAAAAAAAAAAAAAAAEAQIDBQYHAP/EADMQAAIBAwMDAwIFAwQDAAAAAAECEQADIQQSMQVBUSJhcROBBjKRocEUI/BCUrHRJOHx/8QAGAEAAwEBAAAAAAAAAAAAAAAAAQIEAwD/xAAjEQADAQACAgICAwEAAAAAAAAAAQIRAyESQSIxUWEycZET/9oADAMBAAIRAxEAPwDkSjHuRnzzR+hGHWDAt87e8iPihEGD2AMfvRVh4kdyJnvFK0Iwu2F/uHBcOP8AVEiD2845qNmBtnggmI8GeaktJKxkF2yeDGaFIILLmAcSsEmfFGUZb2JYMEiJAEn1YOaJVM+xEkeRUa2irxkELBDKFIxkVdaLo2pu2wyWblxdsghQoI7Zmmf+GVP8ADW5EjAJkgL2ihtRaMYIMtGfPYVeXtDfsAb7Vy2D/utmCPE8Gqu+SLjYKoTIBUmMV05/YkvsCKekY2jgy0kmM/FH6I+k9iRtUBeTJzNQALH+pjEwFAA/yasOmWxKzklpAPFOgctfEM1Gma4+nsgkIqb3IaJEmfg1LrdYmksNbt5vHDPgBD4+YFIL5UXdRgKBstgt2z/Jqp14b+m3nJa7BlszBk0i+yXjnzaT9AVy+GBwS7HB3SffHbNIDsVgVBG7naDJjz8Go1dI/KbZBgn6hJJ7HiBTUYMckKm3ILAk/fz71xd4jY2t2mOd2Rz+lOW6fkASRu5piAEtyXBmdwIiOOaT27kwB7UGh8I7Z/Nxz+1TWj+oEih1wfAjI7RUyHHbIijhuF6R23djIxLYHP75mle3lWggs2W5n7fNO6eis2Wjasj04nzH80UtncLKD1XS8AhvfAoonqsZoOi9NS7/AOQ6ISW/tgWiAYAkxMHIq76h1/8ApSLCW1uXFSbjMxABjAjk4NWOjsrbsJaVQGPpYBYPbHsO/wA0Tregaa9c3uhNwgAlLpQHiPk4ianulvyMZ17g7pOqXW6Xc1sCTsuW2UOCYE9siqTqf4TsXAz2G+hd7ANvUnuI5FauzYSyoRFCIowAv88n5qq/EPUP6PStcRVL79ttTIEzzFZpvy+JrM9dnMtXpXsXHtXAFe2IIKj7Ge4omwAbWDFxiFHYiTkz8VY/iS8uq0mn1gUW7xY2bgGRPb7d6p9O2bfBDXNxJ8d6sl6uyfmkI61fC/SsrGxDLDyYEVVdXvxatKPUTc3wJE4/UnNO114PeuNkgNAP6VDrLigoSACF9JCkge/vzFcg8MZhXXrpY8MDyQzYB8x8eaMFm3/TB8/WLkMApG0RjPcUG1wlvSHDASCG3EeTEZNE6e/cdX9O8hMkLiZEY4BnuKDKqXRG9jagdriG4xgWhLkDyTwKjU5HaMmo2J3HcZPf2PivK3fzXBSHMMntjFeWftRz6Ebx6nEtJBtwAs8g8HmMVAbe6WA2Ip9MsST4+T3psGVJk+jPPYsI+au9PtVrBINi4jjcTbIJzg++D2qk0twqwIAJB4K4mrWxq7m+PQ5uQASu8qJzjzmiiTm3ejo6mRlncKMEKTu+/NWfStWl+0GWQQdrKV2kHwRVD0PV/Ws/TZwbtk7CDmRJgzPEUgs3dLce9p9joR/csFtwOc4nP2yKnrj3oym3LNVc57VW9V0NvU2GtPIRjIIbIPY/NVo/FPZtJqC5EEDIPvxNHazqAs6Q37ivaGyRbZhJPYfNZOKTK5qWjFfirTW9HpdPpEZrhNxr1wlQCcYMVnNM39xeSAMDmPep+r619RdN1zLsTAHCjsPiKg6c5F0cfkJJKziDVkzk9iX2gEEkuJOWmPOam1emBsq5uAOyki2FJIE4EzBPsK9o71tCxKpcdngB13gCeY4p9+9bXAaXVvSRbwMczPj2NBgW+SwDJu6YKr2UCXF3Am2AxEeeR8GoRcXJggERAYKRnz8UuoVmaWZjbLSSFkqO5A44pdXpkRfQ5uWy2625UCR8dj7UGijr2QveQjFsD3Nwk/PioZ+fYUTrbKW1thSXcrN1jKiYyAPHae5oSaA0/ottOSzHJACQAZaRPAHbIosWy+WJN2QQCsKBGMfwMUOrAcQxJ5KwR470ZYublPIdfygeoHOTPajLJbb9Hk0UXMkMCckMTP7Yqw0fS3e6qopQjJJXCrjMzk5qHTiRMiJyBzzW3/DOi22wzSXvZAK5C9hTVWIm860tOh9FtWbK+kFysMSskjzNW7aW2y/ktnthQpHvPIqVVgACCIjK44xTXYJzADGAQ2DUVU2ylJJFRqLp0zQdz2mzbO0kjyJ/77VVdX0eo6lb2jZZsoZtq7GS3mYgCDEVo+o6X6tqMBw25CV3AH/qMUNpyFGyDbdVypXnyZ7ie4pled+0LW+vo5Z1fpl/TEC6hSDAblT9+KA0Ry54AtGPiDXXOq6e1ftNbuBWDrt2lhJxz5n3FcsuaQ2bmot4BshlJLRIkQfmDVXHyeYU/iUjHPnPekunPkdqdfWD2Pz3rzW2KztIHG4rAP3p2ihZ0O09wCZkqBBBXn2oZiyPIAKThTkARx+nepXUoASARcyCGBB89+aYx3LHAIkR5pMGGPq5b8qkERBUsOPE1ExLtwASYAVYk/HeltaZmfaIEZJLQAPM/wAVaWVFhQFKC4y/3LhWSo8e3yK4LpIGR58knmi7L/pwYquUx4kmBU6PHkZrkhKku+nJuvWkkhGuBSPuK6l00DcOAEXAHbwK5N0rVBL1psQtwEk+JzXUukXwzYg7hgj1A/4DWfN9E/h8jQIcfbApmrti7aIyCuVIWCD5pqT8COS0AU5iu2PWQeSGKfvUqY7RXjWOqEbS7WxOGABEc8yD7U0XWu7G2i2gO7LByTBgeAM1DrD9C4Dl0uCAS2Rjj3EGZptrVJwCRInaVCkHuPcd61aWaiaapNyyDqPSlvai3eNy5bNkflDCCJMZ7Zx7isB+ILg/qdTwC1/bJxgASa3+s6j9O27sjJbVNzMbgEDuYnn2rmfVtV/Vam5dUMtt39KmARgZ8A4mn4N01SBm1OwHYis5XabrqHIHkDgfPNV7uXkszOQOSxNGtpbzYCOYMEBcimW+mXXZgoVGH5lLCR9uap+zVVK9lc5z7AwB4p9m2zmFBJ5x29/Ye9Wb9LRINxzvBg2woIH3nNC3b6oSqQiEwY5I8T34pX0P5+X8RzXlVAgAJmWYtknz7DtQb3CSe85Piorj5PBk8+KRCO8yRzSNaOpwcD+1TBuO4PNCk09Xp0PgbZuQ3MCIrQ9F/ED6ds7rloiIDQR4M/wayqH/AN0Qj/sabEzOo06npfxlZYAH6jMTABtwSewmYq3sdUN30qhtknDXGBAHmJk1zboVsMy8FmyZ4Czk/M4rVqSnrDuGDbgA0CZyOJArG+GfRJdUniNDqNGLoG57zsp3AqwQAxkxHjzWN/EGsu6TU/RWLgKbwzrBGT7xV/0y5fZmdmItFYChiQc8zPtEisl+K7yPrbnqJNtAgIbBMZFJxrKz7OzexNd1BbttFvXLl0jJthtikxgRyc+TQy6hNqMUsW0mCFswQOx8E47g1Uo4B3MJEQAcwfNNvakNumQAswG2wf4qjcO/5Fst9Dcb0gBjmWKDvjGKDfqG0sSAwVoADY7SPcSKr31Z2+QVgEYn7UC10ke4EEFeaGmkcH5Cb+qLk5IBMgFpjzQVwmTyDODSJc+CQMT3NKTj3jilKZlSRx8T4pFP2991Ix/Wkn9DRHHkUoNGWbaqP9LyYBPqI948VPsTsqQBJIUST48AVwj5P0AKamQ0Y2ms3Nu0m0xENLSAex4xUVzS/TCnchBMEBgSecx2HzmmO80y2/D+q2XCDA3AKCeBnie1am2dzKCcFtv5uM1gG1TbdoO1PAWBz/zjmtB0zqDfRRnYEG59MMWgzOPn5oUYXGvTb6/UtZ07fTUG5si2C0CYOZ+0x3rmF/UlmLk7rhMli2Se5rb9V1k9NuuSUdbcKQ0GZEH5zXOmPzxArLhWaNEhVy7KDggYJ3c5zQlw5PcEdu9MNzEYOZj3qNn/AGrU0Uji/p+/6Uwd/I7GmMf0nimsfmO9AfDxOfGezU9j8SeaiJpxOPeM+qgcxrH/AOUn/NNZqSaOBLJ7xOTBMRhQuI8U1bxE8gHAAbBFDhvkgClB+3iuF8QkX44kCmNcJ5kxnLVCG/alGfkmuOxEm6fk0fo9M77QWNu2HlZlROMx2PvUViyqjcTLjIAUEURf1+62okSOCJn9O1MZU2/4mh69q9KdIln6tx7q+oJbUAE5gkxx7CsezjyPFI98nuSRiS0mh2afuaVLB4nEOZ8+1NY0wmkJ/SuNBSaQ/wCGkmkJ+/b4rjhS1IWx3B49qQg/fvXiD9hXHCAVLZsliP8AaTBIYYpqoT+tWlixsUckTJO2e3NcBvD/2Q==');
insert into user values ('2', 'Michael', 'password_tmp', 'john.doe@example.com', '2025-03-26', '0', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-84TFCtXfgjuSRxLF3cf3i8MaLAH3OV7W2Q&s');
insert into user values ('3', 'Nobodys Friend', 'password_tmp', 'john.doe@example.com', '2025-03-26', '0', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLC_BDvEmiQXGYCO7kZ5oJVQmEOz0I0hIydA&s');

insert into user values ('4', 'bigdog793', 'no_pass', 'pwry.zraay@example.com', '2004-11-29', '220', 'https://randomuser.me/api/portraits/med/men/96.jpg');
insert into user values ('5', 'organicgorilla215', 'no_pass', 'shivansh.kini@example.com', '2017-11-21', '23', 'https://randomuser.me/api/portraits/med/men/48.jpg');
insert into user values ('6', 'ticklishpanda635', 'no_pass', 'roy.lawson@example.com', '2015-10-07', '229', 'https://randomuser.me/api/portraits/med/men/16.jpg');
insert into user values ('7', 'organicfrog341', 'no_pass', 'balveer.babu@example.com', '2004-12-23', '203', 'https://randomuser.me/api/portraits/med/men/34.jpg');
insert into user values ('8', 'happyelephant677', 'no_pass', 'eelis.manninen@example.com', '2014-05-14', '153', 'https://randomuser.me/api/portraits/med/men/36.jpg');
insert into user values ('9', 'silverladybug867', 'no_pass', 'kai.brandt@example.com', '2008-11-28', '187', 'https://randomuser.me/api/portraits/med/women/69.jpg');
insert into user values ('10', 'bigelephant333', 'no_pass', 'elsa.moilanen@example.com', '2011-12-19', '90', 'https://randomuser.me/api/portraits/med/women/50.jpg');
insert into user values ('11', 'yellowzebra158', 'no_pass', 'martin.barrett@example.com', '2008-07-27', '173', 'https://randomuser.me/api/portraits/med/men/86.jpg');
insert into user values ('12', 'heavypanda864', 'no_pass', 'silvija.popovic@example.com', '2014-07-05', '248', 'https://randomuser.me/api/portraits/med/women/59.jpg');
insert into user values ('13', 'brownpeacock675', 'no_pass', 'gina.johansen@example.com', '2004-11-25', '204', 'https://randomuser.me/api/portraits/med/women/19.jpg');
insert into user values ('14', 'silverlion442', 'no_pass', 'victoria.jean@example.com', '2015-09-04', '205', 'https://randomuser.me/api/portraits/med/women/7.jpg');
insert into user values ('15', 'sadrabbit828', 'no_pass', 'tracey.evans@example.com', '2010-10-15', '59', 'https://randomuser.me/api/portraits/med/women/29.jpg');
insert into user values ('16', 'whiteelephant226', 'no_pass', 'josilaine.novaes@example.com', '2009-05-22', '80', 'https://randomuser.me/api/portraits/med/women/44.jpg');
insert into user values ('17', 'yellowwolf613', 'no_pass', 'benoit.guillot@example.com', '2003-04-15', '176', 'https://randomuser.me/api/portraits/med/men/25.jpg');
insert into user values ('18', 'yellowduck719', 'no_pass', 'lester.neal@example.com', '2021-05-27', '221', 'https://randomuser.me/api/portraits/med/men/10.jpg');
insert into user values ('19', 'greenwolf118', 'no_pass', 'alicia.tapia@example.com', '2016-10-08', '21', 'https://randomuser.me/api/portraits/med/women/20.jpg');
insert into user values ('20', 'orangedog985', 'no_pass', 'ozsu.topcuoglu@example.com', '2008-03-16', '99', 'https://randomuser.me/api/portraits/med/women/59.jpg');
insert into user values ('21', 'ticklishbear211', 'no_pass', 'aleksi.haapala@example.com', '2003-09-29', '218', 'https://randomuser.me/api/portraits/med/men/95.jpg');
insert into user values ('22', 'ticklishsnake777', 'no_pass', 'joan.duncan@example.com', '2017-03-22', '79', 'https://randomuser.me/api/portraits/med/women/1.jpg');
insert into user values ('23', 'blackbird730', 'no_pass', 'andrea.zekic@example.com', '2004-08-05', '12', 'https://randomuser.me/api/portraits/med/women/70.jpg');

insert into friends values ('0', '1', '2025-03-27');
insert into friends values ('2', '0', '2025-03-29');


insert into club values ('Ghibli Fans', 'In this club we talk about all things made by Studio Ghibli!');
insert into club_topics values ('Ghibli Fans', 'animation');
insert into club_topics values ('Ghibli Fans', 'anime');
insert into club_topics values ('Ghibli Fans', 'ghibli');
insert into member_of values ('Ghibli Fans', '0', 'OWN');

insert into review values ('0', '0', '2025-03-27 14:00:00', 10, 'My favorite movie!', 'Ghibli Fans', 10, 0);
insert into review values ('0', '0', '2025-03-27 17:30:00', 10, 'I can''t stop watching it it''s so good', NULL, 0, 0);
insert into review values ('1', '0', '2025-03-27 17:30:00', 2, 'I didn''t really like this movie...', NULL, 0, 0);
insert into review values ('3', '0', '2025-03-27 14:00:00', 5, 'This movie was fine', 'Ghibli Fans', 10, 0);
insert into review values ('2', '0', '2025-03-27 17:30:00', 10, 'I can''t stop watching it it''s so good', 'Ghibli Fans', 0, 0);


insert into member_of (club_name, user_id, admin_level) values ('Ghibli Fans', '2', 'MEM');
insert into member_of (club_name, user_id, admin_level) values ('Ghibli Fans', '12', 'MEM');
insert into member_of (club_name, user_id, admin_level) values ('Ghibli Fans', '3', 'MEM');
insert into member_of (club_name, user_id, admin_level) values ('Ghibli Fans', '5', 'MEM');
insert into member_of (club_name, user_id, admin_level) values ('Ghibli Fans', '6', 'MEM');
insert into member_of (club_name, user_id, admin_level) values ('Ghibli Fans', '7', 'MEM');
insert into member_of (club_name, user_id, admin_level) values ('Ghibli Fans', '9', 'MEM');




insert into club values ('Action Lovers', 'All of us really like action movies');
insert into club_topics values ('Action Lovers', 'Action');
insert into club_topics values ('Action Lovers', 'Chases');
insert into club_topics values ('Action Lovers', 'Fast-pace');

insert into member_of (club_name, user_id, admin_level) values ('Action Lovers', '2', 'MEM');
insert into member_of (club_name, user_id, admin_level) values ('Action Lovers', '12', 'MEM');
insert into member_of (club_name, user_id, admin_level) values ('Action Lovers', '3', 'MEM');
insert into member_of (club_name, user_id, admin_level) values ('Action Lovers', '5', 'MEM');
insert into member_of (club_name, user_id, admin_level) values ('Action Lovers', '6', 'MEM');
insert into member_of (club_name, user_id, admin_level) values ('Action Lovers', '7', 'MEM');
insert into member_of (club_name, user_id, admin_level) values ('Action Lovers', '9', 'OWN');


insert into club values ('Rom-com Haters', 'Why would anyone like a rom-com? They just aren''t appealing...');
insert into club_topics values ('Rom-com Haters', 'Romance');
insert into club_topics values ('Rom-com Haters', 'Cheesy');

insert into member_of (club_name, user_id, admin_level) values ('Rom-com Haters', '2', 'MEM');
insert into member_of (club_name, user_id, admin_level) values ('Rom-com Haters', '12', 'MEM');
insert into member_of (club_name, user_id, admin_level) values ('Rom-com Haters', '3', 'MEM');
insert into member_of (club_name, user_id, admin_level) values ('Rom-com Haters', '1', 'MEM');
insert into member_of (club_name, user_id, admin_level) values ('Rom-com Haters', '6', 'MEM');
insert into member_of (club_name, user_id, admin_level) values ('Rom-com Haters', '8', 'MEM');
insert into member_of (club_name, user_id, admin_level) values ('Rom-com Haters', '13', 'OWN');

insert into club values ('Horror Buffs', 'We love things that go bump in the night.');
insert into club_topics values ('Horror Buffs', 'Horror');
insert into club_topics values ('Horror Buffs', 'Supernatural');
insert into club_topics values ('Horror Buffs', 'Jump Scares');


insert into member_of (club_name, user_id, admin_level) values ('Horror Buffs', '2', 'MEM');
insert into member_of (club_name, user_id, admin_level) values ('Horror Buffs', '5', 'MEM');
insert into member_of (club_name, user_id, admin_level) values ('Horror Buffs', '4', 'OWN');



insert into poll (user_id, post_date, content, in_club) 
values ('0', '2025-03-27 14:00:00', 'Which of these movies do you like the best?', 'Ghibli Fans');
set @poll_id := LAST_INSERT_ID();

insert into poll_option (poll_id, option_desc) values 
(@poll_id, 'Porco Rosso'),
(@poll_id, 'Princess Mononoke'),
(@poll_id, 'My Neighbor Totoro');

insert into poll_about (poll_id, imdb) values 
(@poll_id, '0'),
(@poll_id, '1'),
(@poll_id, '174');


insert into poll (user_id, post_date, content, in_club) 
values ('0', '2025-03-27 14:01:00', 'Did you like how The Wind Rises ended?', 'Ghibli Fans');
set @poll_id := LAST_INSERT_ID();

insert into poll_option (poll_id, option_desc) values 
(@poll_id, 'Yes'),
(@poll_id, 'No');

insert into poll_about (poll_id, imdb) values 
(@poll_id, '2');


insert into poll (user_id, post_date, content, in_club) 
values ('0', '2025-03-27 14:01:00', 'How many Ghibli movies have you seen??', 'Ghibli Fans');
set @poll_id := LAST_INSERT_ID();

insert into poll_option (poll_id, option_desc) values 
(@poll_id, 'None :('),
(@poll_id, 'Less than 3'),
(@poll_id, 'About 5.'),
(@poll_id, 'More than 6!');


insert into poll (user_id, post_date, content, in_club) 
values ('1', '2025-03-28 10:00:00', 'Favorite Ghibli character?', 'Ghibli Fans');
set @poll_id := LAST_INSERT_ID();

insert into poll_option (poll_id, option_desc) values 
(@poll_id, 'Totoro'),
(@poll_id, 'Kiki'),
(@poll_id, 'Ashitaka'),
(@poll_id, 'No Face');


insert into poll (user_id, post_date, content, in_club) 
values ('2', '2025-03-29 11:15:00', 'Best time to watch horror movies?', 'Horror Buffs');
set @poll_id := LAST_INSERT_ID();

insert into poll_option (poll_id, option_desc) values 
(@poll_id, 'Midnight'),
(@poll_id, 'Afternoon'),
(@poll_id, 'Early Morning'),
(@poll_id, 'Anytime!');


insert into poll (user_id, post_date, content, in_club) 
values ('0', '2025-03-30 08:45:00', 'Do you like romantic subplots in action movies?', 'Action Lovers');
set @poll_id := LAST_INSERT_ID();

insert into poll_option (poll_id, option_desc) values 
(@poll_id, 'Love them!'),
(@poll_id, 'Only if done right.'),
(@poll_id, 'No thanks'),
(@poll_id, 'Never noticed them');


insert into poll (user_id, post_date, content, in_club) 
values ('3', '2025-03-30 20:30:00', 'Do jump scares actually scare you?', 'Horror Buffs');
set @poll_id := LAST_INSERT_ID();

insert into poll_option (poll_id, option_desc) values 
(@poll_id, 'Every time!'),
(@poll_id, 'Sometimes'),
(@poll_id, 'Rarely'),
(@poll_id, 'Never');


insert into poll (user_id, post_date, content, in_club) 
values ('1', '2025-03-31 12:00:00', 'Most overrated rom-com trope?', 'Rom-com Haters');
set @poll_id := LAST_INSERT_ID();

insert into poll_option (poll_id, option_desc) values 
(@poll_id, 'Love at first sight'),
(@poll_id, 'Enemies to lovers'),
(@poll_id, 'The airport scene'),
(@poll_id, 'Amnesia');


insert into poll (user_id, post_date, content, in_club) 
values ('2', '2025-04-01 09:00:00', 'Best movie snack?', 'Action Lovers');
set @poll_id := LAST_INSERT_ID();

insert into poll_option (poll_id, option_desc) values 
(@poll_id, 'Popcorn'),
(@poll_id, 'Nachos'),
(@poll_id, 'Candy'),
(@poll_id, 'Pizza');


insert into poll (user_id, post_date, content, in_club) 
values ('0', '2025-04-01 15:10:00', 'Do you rewatch movies?', 'Ghibli Fans');
set @poll_id := LAST_INSERT_ID();

insert into poll_option (poll_id, option_desc) values 
(@poll_id, 'All the time!'),
(@poll_id, 'Once or twice'),
(@poll_id, 'Rarely'),
(@poll_id, 'Never');


insert into poll (user_id, post_date, content, in_club) 
values ('2', '2025-04-02 18:20:00', 'Best horror movie decade?', 'Horror Buffs');
set @poll_id := LAST_INSERT_ID();

insert into poll_option (poll_id, option_desc) values 
(@poll_id, '1970s'),
(@poll_id, '1980s'),
(@poll_id, '1990s'),
(@poll_id, '2000s+');


insert into poll (user_id, post_date, content, in_club) 
values ('1', '2025-04-03 14:30:00', 'Do action movies need good plots?', 'Action Lovers');
set @poll_id := LAST_INSERT_ID();

insert into poll_option (poll_id, option_desc) values 
(@poll_id, 'Yes!'),
(@poll_id, 'Only a bit'),
(@poll_id, 'Not really'),
(@poll_id, 'Explosions are enough');


insert into poll (user_id, post_date, content, in_club) 
values ('3', '2025-04-04 17:00:00', 'How do you feel about rom-coms?', 'Rom-com Haters');
set @poll_id := LAST_INSERT_ID();

insert into poll_option (poll_id, option_desc) values 
(@poll_id, 'Despise them'),
(@poll_id, 'Mild dislike'),
(@poll_id, 'Some are okay'),
(@poll_id, 'Secretly love them');
