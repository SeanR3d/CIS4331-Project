-- Sean Reddington --
-- CIS4331 Project: Data insert file --

-- Give the top-20 users by the number of comments they post. --
-- Give the top-20 users by the number of replies they post. --
-- Give the top-20 users by the number of like/dislike they post. --
-- Give the top-10 websites with the most requests for article comments. --
-- Give the top-10 websites with the most sales this month/week/year. --

-- users --
    INSERT INTO user_table (user_id, user_name, email, state, country, user_login, user_password) 
    VALUES ("900000002", "Sean again", "sean@again.com", "PA", "USA", "seanagain", "password");
    insert into user_table values ('900000000', 'The One', 'TheOne@One.com', 'NY', 'USA', 'Neo', 'whiterabbit', null);
    insert into user_table values ('900000003', 'sean three', 'sean3@email.com', 'PA', 'USA', 'sean3', 'password', null);
    insert into user_table values ('900000004', 'noella ruth', 'nruth@email.com', 'MN', 'USA', 'nruth4', 'popcorn', null);
    insert into user_table values ('900000005', 'blake carter', 'bcarter@email.com', 'NJ', 'USA', 'bcarter5', 'pecan5', null);
    insert into user_table values ('900000006', 'morty sanz', 'msanz@email.com', 'TX', 'USA', 'msanz6', 'peanutbutter', null);
    insert into user_table values ('900000007', 'zoey barker', 'zbark3@email.com', 'OH', 'USA', 'zbark7', 'bluewaves', null);
    insert into user_table values ('900000008', 'becky zuck', 'bsizzle3@email.com', 'NY', 'USA', 'bzizzle8', 'pinky', null);
    insert into user_table values ('900000009', 'peter parker', 'ppark@email.com', 'NY', 'USA', 'pparker9', 'spiderman', null);
    insert into user_table values ('900000010', 'bre diechman', 'bdeichman1@email.com', 'PA', 'USA', 'bred10', 'woodchipper', null);
    insert into user_table values ('900000011', 'alex seeger', 'aseegs11@email.com', 'CA', 'USA', 'aseegs11', 'butter11', null);
    insert into user_table values ('900000012', 'lenny brown', 'lbrown@email.com', 'TN', 'USA', 'llbrownie', 'redneck12', null);
    insert into user_table values ('900000013', 'krissmiss eve', 'santa25@email.com', 'AK', 'USA', 'hohoho25', 'mistletoe', null);
    insert into user_table values ('900000014', 'emma tudor', 'emmatudor14@email.com', 'SC', 'USA', 'emmalou', 'starbucks14', null);
    insert into user_table values ('900000015', 'tony sicily', 'tsis@email.com', 'PA', 'USA', 'tonys15', 'meatballs', null);
    insert into user_table values ('900000016', 'jon edward', 'joned@email.com', 'RI', 'USA', 'joned16', 'bankteller', null);
    insert into user_table values ('900000017', 'ciara jones', 'cici17@email.com', 'DE', 'USA', 'cici', 'ringpop', null);
    insert into user_table values ('900000018', 'richard lorch', 'richlor@email.com', 'CT', 'USA', 'rich18', 'rstudio', null);
    insert into user_table values ('900000019', 'david sanchez', 'davesanchez@email.com', 'IL', 'USA', 'dsan', 'chilaquiles', null);
    insert into user_table values ('900000020', 'goku red', 'goku20@email.com', 'HI', 'USA', 'gokman', 'blondie', null);
    insert into user_table values ('900000021', 'brian lipton', 'liptonbri@email.com', 'GA', 'USA', 'liptontea', 'earlgray', null);
    insert into user_table values ('900000022', 'valentina alejandre', 'spicygurl@email.com', 'NM', 'USA', 'spicygurl22', 'hotsauce', null);
    insert into user_table values ('900000023', 'padima tai', 'ptai22@email.com', 'HI', 'USA', 'ptai22', 'noodles', null);
    insert into user_table values ('900000024', 'amber victoria', 'avicky@email.com', 'PA', 'USA', 'ambervic', 'pasty', null);
    insert into user_table values ('900000025', 'belinda hernandez', 'bhern@email.com', 'PA', 'USA', 'beli25', 'queen', null);
    insert into user_table values ('900000026', 'chris langley', 'clang@email.com', 'OR', 'USA', 'chrislang', 'cheesecake', null);
    insert into user_table values ('900000027', 'amanda martinez', 'amandam@email.com', 'PA', 'USA', 'amandamart27', 'pizzarolls', null);
    insert into user_table values ('900000028', 'carla copperfield', 'ccop@email.com', 'VA', 'USA', 'ccopper', 'strawberries', null);
    insert into user_table values ('900000029', 'leonidas reddington', 'leoredd@email.com', 'PA', 'USA', 'lredd29', 'sword11', null);
    insert into user_table values ('900000030', 'ophelia alejandre', 'oph30@email.com', 'PA', 'USA', 'oph', 'princess30', null);

-- customers (publishers/websites) --
    insert into customer_table (customer_id, name, requests) values ('7000000', 'BuzzGarbage', 4);
    insert into customer_table values ('7000001', 'TrashFeed', null);
    insert into customer_table values ('7000002', 'Daily Clickbait', 5);
    insert into customer_table values ('7000003', 'Ad Revenue Please', 100);
    insert into customer_table values ('7000004', 'The Daily Bugle', 10);
    insert into customer_table values ('7000005', 'Repost', 30);
    insert into customer_table values ('7000006', 'Scroll', null);
    insert into customer_table values ('7000007', 'Dopamine Lottery', 700);
    insert into customer_table values ('7000008', 'Steal Yo Cookies', 99999998);
    insert into customer_table values ('7000009', 'Reddit', null);
    insert into customer_table values ('7000010', 'FakeMail', null);
    insert into customer_table values ('7000011', 'StackOverFlow', null);
    insert into customer_table values ('7000012', 'Clickbait Snapchat Channel', 1234);
    insert into customer_table values ('7000013', 'Life Story Recipes', 31);
    insert into customer_table values ('7000014', 'The', null);

-- orders --
    insert into order_table (order_id, price) values ('80000000', 0.99);
    insert into order_table values ('80000001', 20.00);
    insert into order_table values ('80000002', 5.59);
    insert into order_table values ('80000003', 500.00);
    insert into order_table values ('80000004', 7.89);
    insert into order_table values ('80000005', 12345.67);
    insert into order_table values ('80000006', 23.14);
    insert into order_table values ('80000007', 4.99);
    insert into order_table values ('80000008', 9.06);
    insert into order_table values ('80000009', 11.21);
    insert into order_table values ('80000010', 51.17);
    insert into order_table values ('80000011', 88.88);
    insert into order_table values ('80000012', 99999.99);
    insert into order_table values ('80000013', 1.99);
    insert into order_table values ('80000014', 2.43);
    insert into order_table values ('80000015', 0.50);
    insert into order_table values ('80000016', 99.98);
    insert into order_table values ('80000017', 0.01);
    insert into order_table values ('80000018', 350.00);
    insert into order_table values ('80000019', 1010.10);
    insert into order_table values ('80000020', 987.98);
    insert into order_table values ('80000021', 65.43);
    insert into order_table values ('80000022', 15.15);
    insert into order_table values ('80000023', 0.99);
    insert into order_table values ('80000024', 20.00);
    insert into order_table values ('80000025', 4.99);
    insert into order_table values ('80000026', 9.06);
    insert into order_table values ('80000027', 11.21);
    insert into order_table values ('80000028', 51.17);
    insert into order_table values ('80000029', 88.88);

-- articles --
    insert into article_table
            (article_id, customer_id, order_id, title, author, publication_date, last_updated, topic)
    values ('80000000', '7000000', '80000000', 'How Clickbait Can Maximize Ad Revenue', 'Gavin Belson', '2019-11-11 08:55:31', current_timestamp, 'Business');

    insert into article_table values ('80000001', '7000001', '80000001', 'Happy Trees', 'Bob Ross', '2019-11-04 05:35:14', current_timestamp, 'Art');
    insert into article_table values ('80000002', '7000001', '80000002', 'Salt or Sodium Chloride?', 'Jimbo', current_timestamp, current_timestamp, 'Science');
    insert into article_table values ('80000003', '7000001', '80000003', 'Best Candles for the season', 'Rochard Freeman', '2019-01-01 01:41:01', '2019-01-01 02:41:01', 'Hobbies');
    insert into article_table values ('80000004', '7000003', '80000004', 'Best Korean BBQ', 'Jean Wallace', '2019-02-02 02:01:51', '2019-02-03 02:01:51', 'Food');
    insert into article_table values ('80000005', '7000005', '80000005', 'Are Mermaids Real?', 'Marcus Webb', '2019-03-03 03:02:44', '2019-04-03 03:02:44', 'Science');
    insert into article_table values ('80000006', '7000004', '80000006', 'Mashed Potatoes, Gods treasure', 'Madeline Saunders', current_timestamp, current_timestamp, 'Food');
    insert into article_table values ('80000007', '7000004', '80000007', 'Top 2019 Baby Names', 'Omar Beck', '2018-04-04 04:04:17', '2018-04-04 04:04:18', 'Hobbies');
    insert into article_table values ('80000008', '7000007', '80000008', 'Favorite Holiday Poll', 'Kristina Anderson', '2017-05-05 05:05:26', '2018-05-05 05:05:26', 'Hobbies');
    insert into article_table values ('80000009', '7000006', '80000009', 'Are New Years resolutions so 2000?', 'Lynn Myers', current_timestamp, current_timestamp, 'Null');
    insert into article_table values ('80000010', '7000008', '80000010', 'Slime Recipies for Beginners', 'Shannon Jimenez', '2014-06-06 06:11:00', current_timestamp, 'Crafts');
    insert into article_table values ('80000011', '7000001', '80000011', 'Quirky Girlfriend Traits', 'Rosemary Cross', '2015-07-07 07:22:00', '2015-07-07 07:22:33', null);
    insert into article_table values ('80000012', '7000002', '80000012', 'Cheer Acessories for Beginners', 'Bonnie Mack', '2019-08-08 08:33:00', '2019-08-08 13:33:00', 'Crafts');
    insert into article_table values ('80000013', '7000003', '80000013', 'Top Rated Food in the City', 'Miguel Hill', '2016-09-09 03:44:00', current_timestamp, 'Food');
    insert into article_table values ('80000014', '7000004', '80000014', 'Hippos! Hippos! Hippos!', 'Amos Robbins', '2017-10-10 05:55:00', '2018-02-28 05:55:00', 'Science');
    insert into article_table values ('80000015', '7000005', '80000015', 'Home service reviews', 'Christina Maxwell', '2018-11-11 07:55:00', current_timestamp, 'Science');
    insert into article_table values ('80000016', '7000006', '80000016', 'Tap water vs Bottle water', 'Elsie Drake', '2018-12-12 06:18:00', '2018-12-24 07:18:00', 'Food');
    insert into article_table values ('80000017', '7000007', '80000017', 'Fortnite Rotting Brains: Zombie Apocalypse', 'Sandy Turner',  current_timestamp, current_timestamp, 'News');
    insert into article_table values ('80000018', '7000008', '80000018', 'Rate my Uber', 'Jeremy Becker',  current_timestamp, current_timestamp, null);
    insert into article_table values ('80000019', '7000010', '80000019', 'Engagement rings, the bigger the better', 'Nicole Dawson', '2018-01-13 11:11:01', current_timestamp, 'Life');
    insert into article_table values ('80000020', '7000011', '80000020', 'Cable Management, how to guide', 'Neil Lane', '2018-03-14 12:17:02', current_timestamp, 'Hobbies');
    insert into article_table values ('80000021', '7000012', '80000021', 'How to be cute in the winter', 'Roderick Howard', '2018-03-15 23:58:03', current_timestamp, 'Life');
    insert into article_table values ('80000022', '7000014', '80000022', 'Largest whiteboard in the world, you wont believe the size!', 'Randal Pope', '2017-11-16 22:32:04', current_timestamp, 'Science');
    insert into article_table values ('80000023', '7000001', '80000023', 'Alexa smart devices worth the hype?', 'Sharon Hardy', '2019-11-17 18:26:05', current_timestamp, 'Life');
    insert into article_table values ('80000024', '7000007', '80000024', 'Waste free living', 'Kelley Cahmbers', '2019-10-18 13:44:06', current_timestamp, 'Life');
    insert into article_table values ('80000025', '7000008', '80000025', 'Chickens', 'Ed Boy', '2017-09-19 17:51:07', '2017-09-20 01:14:41', 'Agriculture');
    insert into article_table values ('80000026', '7000008', '80000026', 'Top Rated Documentaries on Netflix this month', 'Kelvin Caldwell', '2019-09-20 14:32:09', current_timestamp, 'Hobbies');
    insert into article_table values ('80000027', '7000003', '80000027', 'Trade wars affecting American Imports', 'Sean Patrick', '2019-07-31 16:01:08', current_timestamp, 'News');
    insert into article_table values ('80000028', '7000011', '80000028', 'Cyber Risk: How to Protect your firm', 'Vicki West', '2019-06-30 01:15:04', '2019-07-04 12:00:00', 'News');
    insert into article_table values ('80000029', '7000013', '80000029', 'The Third Eye', 'Thomas Anderson', '2019-05-27 10:26:02', current_timestamp, 'Technology');


-- comments --
    insert into comment_table (comment_id, comment_datetime, content, derogatory_flag)
    values ('11000000015', '2000-12-31 11:56:30', 'first', false);

    insert into comment_table values ('11000000000','2018-04-23 01:23:29', 'Review blog, this fire side candle is to die for. I lit it for the first time and it feels just like sitting next to the firepit cooking smores. Would very much recommend! ', false);
    insert into comment_table values ('11000000001','2017-11-04 12:25:45', 'Korean barbecue, whats the deal with that! Cooking for yourself seems weird. However the food was amazing and well worth the wait!', false);
    insert into comment_table values ('11000000002','2019-01-03 12:03:56', 'Mermaids are real. I am not a crazy person I saw one with my own eyes off the coast of Seattle. She was beautiful with purple seashells and a green tail!', false);
    insert into comment_table values ('11000000003','2019-08-23 05:45:03', 'The best mashed potato recipie includes, yellow potatoes as they have the most carbs, following by heavy whipping cream, butter, salt and pepper. To die for!', false);
    insert into comment_table values ('11000000004','2019-05-05 07:55:23', 'What should I name my daughter, I\'m stuck between Ariel, Ophelia, Delilah, Mildred, and Josephine. I don\'t want a generic name please help!', false);
    insert into comment_table values ('11000000005','2018-12-25 02:12:48', 'What\'s everyone\'s favorite holiday, mine is Thanksgiving but with Christmas I\'m feeling nostalgic. Does anyone like Valentines day?', false);
    insert into comment_table values ('11000000006','2017-01-04 04:34:23', 'New  years resolutions? They\'re outdated, boring, and old. New movement is being happy into the new year without any reprecussions', false);
    insert into comment_table values ('11000000007','2019-09-29 03:55:12', 'Best slime recipe? I keep trying and trying but it either comes out too wet or too dry I need a perfect recipe please help!', false);
    insert into comment_table values ('11000000008','2018-10-27 08:27:45', 'My girlfriend is weird man', false);
    insert into comment_table values ('11000000009','2019-12-13 04:32:39', 'My daughter just began cheerleading, where is the best place to find sparkly bows? the big kind', false);
    insert into comment_table values ('11000000010','2018-06-29 02:12:19', 'Does anyone know a great barbacoa spot? My family an I have been hearing great things!', false);
    insert into comment_table values ('11000000011','2017-07-26 10:23:49', 'Hippopotamus facts: Hippos can\'t swim or float! They walk or stannd on surfaces below the water like sandbacks', false);
    insert into comment_table values ('11000000012','2019-10-07 09:51:28', 'Best home service? Google mini, Amanzon Alexa? Are they both dumb?! ', false);
    insert into comment_table values ('11000000013','2018-03-02 06:48:29', 'Does all water taste the same? Comment below with responses!', false);
    insert into comment_table values ('11000000014','2019-02-28 05:33:29', 'Is fornite bad? My nine year old is on it nonstop, doing weird dance moves, buying v-bucks, talking with kids from other schools, please send help', false);

    -- reply comments --
    insert into comment_table values ('11000000016','2018-04-24 01:23:45', 'What is a fire side candle?', false);
    insert into comment_table values ('11000000017','2018-04-23 02:05:00', 'I love the candles that crackle!', false);
    insert into comment_table values ('11000000018','2017-11-04 20:13:59', 'Happy Birthday!', false);
    insert into comment_table values ('11000000019','2018-11-04 14:21:08', 'Happy Birthday!', false);
    insert into comment_table values ('11000000020','2019-08-23 08:30:47', 'Impossible. No bacon', false);
    insert into comment_table values ('11000000021','2019-06-05 03:49:06', 'Those seem a little to human for a cat name', false);
    insert into comment_table values ('11000000022','2018-12-25 02:58:35', 'Merry Christmas!', false);
    insert into comment_table values ('11000000023','2018-01-01 05:47:24', 'Maybe this year?', false);
    insert into comment_table values ('11000000024','2019-09-30 06:36:13', 'When in doubt add move ACTIVATOR', false);
    insert into comment_table values ('11000000025','2018-06-30 07:05:32', 'Never hire a gf for data entry', false);
    insert into comment_table values ('11000000026','2018-03-02 08:24:51', '#watergate', false);
    insert into comment_table values ('11000000027','2018-04-23 09:23:55', 'My kid spent over $400 on dances!', false);
        


-- posts --
    insert into post_table (post_id, comment_id, user_id, article_id)
                    values ('11000000000','11000000000', '900000000', '80000000');

    insert into post_table values ('11000000001', '11000000001', '900000000', '80000001');
    insert into post_table values ('11000000002', '11000000002', '900000007', '80000029');
    insert into post_table values ('11000000003', '11000000003', '900000003', '80000023');
    insert into post_table values ('11000000004', '11000000004', '900000004', '80000004');
    insert into post_table values ('11000000005', '11000000005', '900000005', '80000002');
    insert into post_table values ('11000000006', '11000000006', '900000003', '80000014');
    insert into post_table values ('11000000007', '11000000007', '900000006', '80000014');
    insert into post_table values ('11000000008', '11000000008', '900000007', '80000028');
    insert into post_table values ('11000000009', '11000000009', '900000008', '80000016');
    insert into post_table values ('11000000010', '11000000010', '900000009', '80000009');
    insert into post_table values ('11000000011', '11000000011', '900000010', '80000019');
    insert into post_table values ('11000000012', '11000000012', '900000011', '80000012');
    insert into post_table values ('11000000013', '11000000013', '900000012', '80000001');
    insert into post_table values ('11000000014', '11000000014', '900000013', '80000005');
    insert into post_table values ('11000000015', '11000000015', '900000014', '80000007');
    insert into post_table values ('11000000016', '11000000000', '900000025', '80000007');
    

-- replies --
    insert into reply_table (reply_id, comment_id, user_id, article_id)
                        values('11000000016', '11000000000', '900000000', '80000000');

    insert into reply_table values ('11000000017', '11000000000', '900000000', '80000011');
    insert into reply_table values ('11000000018', '11000000001', '900000002', '80000010');
    insert into reply_table values ('11000000019', '11000000001', '900000002', '80000009');
    insert into reply_table values ('11000000020', '11000000003', '900000003', '80000008');
    insert into reply_table values ('11000000021', '11000000004', '900000004', '80000007');
    insert into reply_table values ('11000000022', '11000000005', '900000005', '80000006');
    insert into reply_table values ('11000000023', '11000000006', '900000006', '80000005');
    insert into reply_table values ('11000000024', '11000000007', '900000007', '80000004');
    insert into reply_table values ('11000000025', '11000000008', '900000008', '80000003');
    insert into reply_table values ('11000000026', '11000000013', '900000009', '80000002');
    insert into reply_table values ('11000000027', '11000000014', '900000010', '80000001');
    

-- like/dislikes --
    insert into likes_dislikes_table (likes_id, likes, user_id, article_id)
                    values ('11000000016', true, '900000000', '80000000');

    insert into likes_dislikes_table values ('11000000000', true , '900000000', '80000001');
    insert into likes_dislikes_table values ('11000000001', true , '900000002', '80000001');
    insert into likes_dislikes_table values ('11000000002', true , '900000000', '80000001');
    insert into likes_dislikes_table values ('11000000003', false, '900000007', '80000002');
    insert into likes_dislikes_table values ('11000000004', false, '900000004', '80000002');
    insert into likes_dislikes_table values ('11000000005', true , '900000003', '80000002');
    insert into likes_dislikes_table values ('11000000006', false, '900000006', '80000003');
    insert into likes_dislikes_table values ('11000000007', true , '900000003', '80000004');
    insert into likes_dislikes_table values ('11000000008', true , '900000006', '80000005');
    insert into likes_dislikes_table values ('11000000009', false, '900000007', '80000006');
    insert into likes_dislikes_table values ('11000000010', false, '900000008', '80000006');
    insert into likes_dislikes_table values ('11000000011', false, '900000009', '80000006');
    insert into likes_dislikes_table values ('11000000012', true , '900000014', '80000007');
    insert into likes_dislikes_table values ('11000000013', true , '900000003', '80000007');
    insert into likes_dislikes_table values ('11000000014', true , '900000002', '80000007');
    insert into likes_dislikes_table values ('11000000015', true , '900000004', '80000007');
