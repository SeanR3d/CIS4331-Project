-- Sean Reddington --
-- CIS4331: Project --

-- create database schema --
create database if not exists project_db;

use project_db;

-- customer table --
create table customer_table(
	customer_id			varchar(7),
    name				varchar(50)			not null,
    requests			numeric(8)          default 0,
    primary key (customer_id)
);
    
-- order table --
create table order_table(
	order_id			varchar(8),
    price				numeric(10,2)		not null,
    primary key (order_id)
);

-- article table --
create table article_table(
	article_id			varchar(8),
    customer_id			varchar(7)			not null,
    order_id			varchar(8)			not null,
    title				varchar(50) 		not null,
    author				varchar(50) 		not null,
    publication_date	datetime			default current_timestamp,
    last_updated		datetime            default current_timestamp,
    topic				varchar(25),
    primary key (article_id),
    foreign key (customer_id) references customer_table(customer_id),
    foreign key (order_id) references order_table(order_id)
);

-- user table --
create table user_table(
	user_id				varchar(9),
    user_name			varchar(50)			not null,
    email				varchar(35)			not null,
    state				varchar(35),
    country				varchar(35),
    user_login			varchar(25)			not null,
    user_password		varchar(30)			not null,
    avatar				longblob,
    primary key (user_id)
);

-- comment table --
create table comment_table(
	comment_id			varchar(11),
    comment_datetime	datetime			default current_timestamp,
    content				text				not null,
    derogatory_flag		boolean,
    primary key (comment_id)
);

-- post table --
create table post_table(
	post_id				varchar(11),
    comment_id			varchar(11),
    user_id				varchar(9),
    article_id			varchar(8),
    primary key (post_id),
    foreign key (comment_id) references comment_table(comment_id),
    foreign key (user_id) references user_table(user_id),
    foreign key (article_id) references article_table(article_id)
);

-- likes/dislikes table --
create table likes_dislikes_table(
	likes_id			varchar(11),
    likes				boolean				not null,
    -- comment_id			varchar(11),
    user_id				varchar(9),
    article_id			varchar(8),
    primary key (likes_id),
    -- foreign key (comment_id) references comment_table(comment_id),
    foreign key (user_id) references user_table(user_id),
    foreign key (article_id) references article_table(article_id)
);

-- reply table --
create table reply_table(
	reply_id			varchar(11),
    comment_id			varchar(11),
    user_id				varchar(9),
    article_id			varchar(8),
    primary key (reply_id, comment_id),
	foreign key (reply_id) references comment_table(comment_id),
    foreign key (comment_id) references comment_table(comment_id),
    foreign key (user_id) references user_table(user_id),
    foreign key (article_id) references article_table(article_id)
);

-- monitors table --
create table monitor_table(
	monitor_id			varchar(6),
    decision			boolean,
	comment_id			varchar(11),
    user_id				varchar(9),
    article_id			varchar(8),
	primary key (monitor_id),
    foreign key (comment_id) references comment_table(comment_id),
    foreign key (user_id) references user_table(user_id),
    foreign key (article_id) references article_table(article_id)
);












