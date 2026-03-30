create table movie
(
	imdb			varchar(9) not NULL,
	title			varchar(80) not NULL,
	release_year	year,
	runtime	 		time,
	movie_desc		text,
	movie_poster 	text,

	primary key (imdb)
);


create table movie_genres
(	
	imdb 	varchar(9) not NULL,
	genre 	varchar(20) not NULL,

	primary key (imdb, genre),
	foreign key (imdb) references movie(imdb) on delete cascade
);

create table user
(
	user_id 		varchar(10) not NULL,
	display_name 	varchar(20) not NULL,
	password_hash 	varchar(255) not NULL,
	email			varchar(255) not NULL,
	date_joined 	date not NULL,
	favorite_movie 	varchar(9) default NULL,
	user_img 		text,

	primary key (user_id),
	foreign key (favorite_movie) references movie(imdb) on delete cascade
);

create table friends
(
	user_id 		varchar(10) not NULL,
	friend_id 		varchar(10) not NULL,
	friend_since 	date not NULL,

	primary key (user_id, friend_id),
	foreign key (user_id) references user(user_id) on delete cascade,
	foreign key (friend_id) references user(user_id) on delete cascade
);


create table club 
(
	club_name 			varchar(20) not NULL,
	club_description 	text,

	primary key (club_name)
);


create table review
(
	user_id 	varchar(10) not NULL,
	imdb 		varchar(9) not NULL,
	watch_date 	datetime not NULL,
	rating 		tinyint not NULL check (rating between 0 and 10),
	content 	text,
	in_club 	varchar(20),
	likes 		int default 0 not NULL check (likes >= 0),
	dislikes 	int default 0 not NULL check (dislikes >= 0),

	primary key (user_id, imdb, watch_date),
	foreign key (user_id) references user(user_id) on delete cascade,
	foreign key (imdb) references movie(imdb) on delete cascade,
	foreign key (in_club) references club(club_name)
);

create table poll 
(
	poll_id     int AUTO_INCREMENT,
	user_id 	varchar(10) not NULL,
	post_date 	datetime not NULL,
	content 	text,
	in_club 	varchar(20) not NULL,

	primary key (poll_id),
	foreign key (user_id) references user(user_id) on delete cascade,
	foreign key (in_club) references club(club_name) on delete cascade
);

CREATE TABLE poll_option (
	poll_id      INT NOT NULL,
	option_id    INT AUTO_INCREMENT,
    option_desc  VARCHAR(30) NOT NULL,

    PRIMARY KEY (option_id),
	FOREIGN KEY (poll_id) REFERENCES poll(poll_id) ON DELETE CASCADE
);

create table poll_about 
(
	poll_id      INT NOT NULL,
	imdb 		varchar(9) not NULL,

	primary key (poll_id, imdb),
	FOREIGN KEY (poll_id) REFERENCES poll(poll_id) ON DELETE CASCADE,
	foreign key (imdb) references movie(imdb) on delete cascade
);

CREATE TABLE poll_vote (
    user_id    VARCHAR(10) NOT NULL,
    poll_id     INT NOT NULL,
    option_id   INT NOT NULL,

    PRIMARY KEY (user_id, poll_id),
    FOREIGN KEY (user_id) REFERENCES user(user_id) ON DELETE CASCADE,
    FOREIGN KEY (poll_id, option_id) REFERENCES poll_option(poll_id, option_id) ON DELETE CASCADE
);


create table club_topics
(
	club_name 	varchar(20) not NULL,
	topic 		varchar(15) not NULL,

	primary key (club_name, topic),
	foreign key (club_name) references club(club_name) on delete cascade
);

create table member_of
(
	club_name 	varchar(20) not NULL,
	user_id 	varchar(10) not NULL,
	admin_level char(3) not NULL,

	primary key (club_name, user_id),
	foreign key (club_name) references club(club_name) on delete cascade,
	foreign key (user_id) references user(user_id) on delete cascade
);

CREATE INDEX idx_review_date_imdb ON review (watch_date, imdb);