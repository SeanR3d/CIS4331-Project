-- Sean Reddington --
-- CIS4331 Project: Data insert file --

-- Give the top-20 users by the number of comments they post. --
-- Give the top-20 users by the number of replies they post. --
-- Give the top-20 users by the number of like/dislike they post. --
-- Give the top-10 websites with the most requests for article comments. --
-- Give the top-10 websites with the most sales this month/week/year. --

-- users --
    INSERT INTO user_table (user_id, user_name, email, state, country, user_login, user_password) 
    VALUES ("900000002", "sean again", "sean@again.com", "PA", "USA", "seanagain", "password");
    insert into user_table values ('900000003', 'sean three', 'sean3@email.com', 'PA', 'USA', 'sean3', 'password');
    insert into user_table values ('900000004', 'noella ruth', 'nruth@email.com', 'MN', 'USA', 'nruth4', 'popcorn');
    insert into user_table values ('900000005', 'blake carter', 'bcarter@email.com', 'NJ', 'USA', 'bcarter5', 'pecan5');
    insert into user_table values ('900000006', 'morty sanz', 'msanz@email.com', 'TX', 'USA', 'msanz6', 'peanutbutter');
    insert into user_table values ('900000007', 'zoey barker', 'zbark3@email.com', 'OH', 'USA', 'zbark7', 'bluewaves');
    insert into user_table values ('900000008', 'becky zuck', 'bsizzle3@email.com', 'NY', 'USA', 'bzizzle8', 'pinky');
    insert into user_table values ('900000009', 'peter parker', 'ppark@email.com', 'NY', 'USA', 'pparker9', 'spiderman');
    insert into user_table values ('900000010', 'bre diechman', 'bdeichman1@email.com', 'PA', 'USA', 'bred10', 'woodchipper');
    insert into user_table values ('900000011', 'alex seeger', 'aseegs11@email.com', 'CA', 'USA', 'aseegs11', 'butter11');
    insert into user_table values ('900000012', 'lenny brown', 'lbrown@email.com', 'TN', 'USA', 'llbrownie', 'redneck12');
    insert into user_table values ('900000013', 'krissmiss eve', 'santa25@email.com', 'AK', 'USA', 'hohoho25', 'mistletoe');
    insert into user_table values ('900000014', 'emma tudor', 'emmatudor14@email.com', 'SC', 'USA', 'emmalou', 'starbucks14');
    insert into user_table values ('900000015', 'tony sicily', 'tsis@email.com', 'PA', 'USA', 'tonys15', 'meatballs');
    insert into user_table values ('900000016', 'jon edward', 'joned@email.com', 'RI', 'USA', 'joned16', 'bankteller');
    insert into user_table values ('900000017', 'ciara jones', 'cici17@email.com', 'DE', 'USA', 'cici', 'ringpop');
    insert into user_table values ('900000018', 'richard lorch', 'richlor@email.com', 'CT', 'USA', 'rich18', 'rstudio');
    insert into user_table values ('900000019', 'david sanchez', 'davesanchez@email.com', 'IL', 'USA', 'dsan', 'chilaquiles');
    insert into user_table values ('900000020', 'goku red', 'goku20@email.com', 'HI', 'USA', 'gokman', 'blondie');
    insert into user_table values ('900000021', 'brian lipton', 'liptonbri@email.com', 'GA', 'USA', 'liptontea', 'earlgray');
    insert into user_table values ('900000022', 'valentina alejandre', 'spicygurl@email.com', 'NM', 'USA', 'spicygurl22', 'hotsauce');
    insert into user_table values ('900000023', 'padima tai', 'ptai22@email.com', 'HI', 'USA', 'ptai22', 'noodles');
    insert into user_table values ('900000024', 'amber victoria', 'avicky@email.com', 'PA', 'USA', 'ambervic', 'pasty');
    insert into user_table values ('900000025', 'belinda hernandez', 'bhern@email.com', 'PA', 'USA', 'beli25', 'queen');
    insert into user_table values ('900000026', 'chris langley', 'clang@email.com', 'OR', 'USA', 'chrislang', 'cheesecake');
    insert into user_table values ('900000027', 'amanda martinez', 'amandam@email.com', 'PA', 'USA', 'amandamart27', 'pizzarolls');
    insert into user_table values ('900000028', 'carla copperfield', 'ccop@email.com', 'VA', 'USA', 'ccopper', 'strawberries');
    insert into user_table values ('900000029', 'leonidas reddington', 'leoredd@email.com', 'PA', 'USA', 'lredd29', 'sword11');
    insert into user_table values ('900000030', 'ophelia alejandre', 'oph30@email.com', 'PA', 'USA', 'oph', 'princess30');

-- customers (publishers/websites) --
    insert into customer_tables (order_id, name, requests) values ('7000000', 'BuzzGarbage', 4);
    insert into customer_tables values ('7000001', 'TrashFeed');
    insert into customer_tables values ('7000002', 'Daily Clickbait', 5);
    insert into customer_tables values ('7000003', 'Ad Revenue Please', 100);
    insert into customer_tables values ('7000004', 'The Daily Bugle', 10);
    insert into customer_tables values ('7000005', 'Repost', 30);
    insert into customer_tables values ('7000006', 'Scroll');
    insert into customer_tables values ('7000007', 'Dopamine Lottery', 700);
    insert into customer_tables values ('7000008', 'Steal Yo Cookies', 99999998);
    insert into customer_tables values ('7000009', 'Reddit');
    insert into customer_tables values ('7000010', 'FakeMail');
    insert into customer_tables values ('7000011', 'StackOverFlow');
    insert into customer_tables values ('7000012', 'Clickbait Snapchat Channel', 1234);
    insert into customer_tables values ('7000013', 'Life Story Recipes', 31);
    insert into customer_tables values ('7000014', 'The');

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
    values ('80000000', '70000000', '80000000', 'How Clickbait Can Maximize Ad Revenue', 'Gavin Belson', '2019-11-11 08:55:31', current_timestamp, 'Business')

    insert into article_table values ('80000001', '70000001', '80000001', 'Happy Trees', 'Bob Ross', '2019-11-04 05:35:14', current_timestamp, 'Art');
    insert into article_table values ('80000002', '70000001', '80000002', 'Salt or Sodium Chloride?', 'Jimbo', current_timestamp, current_timestamp, '');
    insert into article_table values ('80000003', '70000001', '80000003', '', 'Rochard Freeman', '2019-01-01 01:41:01', '2019-01-01 02:41:01', '');
    insert into article_table values ('80000004', '70000003', '80000004', '', 'Jean Wallace', '2019-02-02 02:01:51', '2019-02-03 02:01:51', '');
    insert into article_table values ('80000005', '70000005', '80000005', '', 'Marcus Webb', '2019-03-03 03:02:44', '2019-04-03 03:02:44', '');
    insert into article_table values ('80000006', '70000004', '80000006', '', 'Madeline Saunders', current_timestamp, current_timestamp, '');
    insert into article_table values ('80000007', '70000004', '80000007', '', 'Omar Beck', '2018-04-04 04:04:17', '2018-04-04 04:04:18', '');
    insert into article_table values ('80000008', '70000007', '80000008', '', 'Kristina Anderson', '2017-05-05 05:05:26', '2018-05-05 05:05:26', '');
    insert into article_table values ('80000009', '70000006', '80000009', '', 'Lynn Myers', current_timestamp, current_timestamp, '');
    insert into article_table values ('80000010', '70000008', '80000010', '', 'Shannon Jimenez', '2014-06-06 06:11:00', current_timestamp, '');
    insert into article_table values ('80000011', '70000001', '80000011', '', 'Rosemary Cross', '2015-07-07 07:22:00', '2015-07-07 07:22:33', '');
    insert into article_table values ('80000012', '70000002', '80000012', '', 'Bonnie Mack', '2019-08-08 08:33:00', '2019-08-08 13:33:00', '');
    insert into article_table values ('80000013', '70000003', '80000013', '', 'Miguel Hill', '2016-09-09 03:44:00', current_timestamp, '');
    insert into article_table values ('80000014', '70000004', '80000014', '', 'Amos Robbins', '2017-10-10 05:55:00', '2018-02-31 05:55:00', '');
    insert into article_table values ('80000015', '70000005', '80000015', '', 'Christina Maxwell', '2018-11-11 07:55:00', current_timestamp, '');
    insert into article_table values ('80000016', '70000006', '80000016', '', 'Elsie Drake', '2018-12-12 06:18:00', '2018-12-24 07:18:00', '');
    insert into article_table values ('80000017', '70000007', '80000017', '', 'Sandy Turner',  current_timestamp, current_timestamp, '');
    insert into article_table values ('80000018', '70000008', '80000018', '', 'Jeremy Becker',  current_timestamp, current_timestamp, '');
    insert into article_table values ('80000019', '70000010', '80000019', '', 'Nicole Dawson', '2018-01-13 11:11:01', current_timestamp, '');
    insert into article_table values ('80000020', '70000011', '80000020', '', 'Neil Lane', '2018-03-14 12:17:02', current_timestamp, '');
    insert into article_table values ('80000021', '70000012', '80000021', '', 'Roderick Howard', '2018-03-15 24:58:03', current_timestamp, '');
    insert into article_table values ('80000022', '70000014', '80000022', '', 'Randal Pope', '2017-11-16 22:32:04', current_timestamp, '');
    insert into article_table values ('80000023', '70000001', '80000023', '', 'Sharon Hardy', '2019-11-17 18:26:05', current_timestamp, '');
    insert into article_table values ('80000024', '70000007', '80000024', '', 'Kelley Cahmbers', '2019-10-18 13:44:06', current_timestamp, '');
    insert into article_table values ('80000025', '70000008', '80000025', 'Chickens', 'Ed Boy', '2017-09-19 17:51:07', '2017-09-20 01:14:41', 'Agriculture');
    insert into article_table values ('80000026', '70000008', '80000026', '', 'Kelvin Caldwell', '2019-09-20 14:32:09', current_timestamp, '');
    insert into article_table values ('80000027', '70000003', '80000027', '', 'Sean Patrick', '2019-07-31 16:01:08', current_timestamp, '');
    insert into article_table values ('80000028', '70000011', '80000028', '', 'Vicki West', '2019-06-30 01:15:04', '2019-07-04 12:00:00', '');
    insert into article_table values ('80000029', '70000013', '80000029', 'The Third Eye', 'Thomas Anderson', '2019-05-27 10:26:02', current_timestamp, 'Technology');


-- comments --
    insert into commment_table (comment_id, comment_date, comment_time, content, derogatory_flag)
    values ('2000-31-13', '11-56-30', 'first', false);

    insert into comment_table values ('11000000000','YYYY-MM-DD', 'HH-MM-SS', '', false);
    insert into comment_table values ('11000000001','YYYY-MM-DD', 'HH-MM-SS', '', false);
    insert into comment_table values ('11000000002','YYYY-MM-DD', 'HH-MM-SS', '', false);
    insert into comment_table values ('11000000003','YYYY-MM-DD', 'HH-MM-SS', '', false);
    insert into comment_table values ('11000000004','YYYY-MM-DD', 'HH-MM-SS', '', false);
    insert into comment_table values ('11000000005','YYYY-MM-DD', 'HH-MM-SS', '', false);
    insert into comment_table values ('11000000006','YYYY-MM-DD', 'HH-MM-SS', '', false);
    insert into comment_table values ('11000000007','YYYY-MM-DD', 'HH-MM-SS', '', false);
    insert into comment_table values ('11000000008','YYYY-MM-DD', 'HH-MM-SS', '', false);
    insert into comment_table values ('11000000009','YYYY-MM-DD', 'HH-MM-SS', '', false);
    insert into comment_table values ('11000000010','YYYY-MM-DD', 'HH-MM-SS', '', false);
    insert into comment_table values ('11000000011','YYYY-MM-DD', 'HH-MM-SS', '', false);
    insert into comment_table values ('11000000012','YYYY-MM-DD', 'HH-MM-SS', '', false);
    insert into comment_table values ('11000000013','YYYY-MM-DD', 'HH-MM-SS', '', false);
    insert into comment_table values ('11000000014','YYYY-MM-DD', 'HH-MM-SS', '', false);
    insert into comment_table values ('11000000015','YYYY-MM-DD', 'HH-MM-SS', '', false);

    -- reply comments --
    insert into comment_table values ('11000000016','YYYY-MM-DD', 'HH-MM-SS', '', false);
    insert into comment_table values ('11000000017','YYYY-MM-DD', 'HH-MM-SS', '', false);
    insert into comment_table values ('11000000018','YYYY-MM-DD', 'HH-MM-SS', '', false);
    insert into comment_table values ('11000000019','YYYY-MM-DD', 'HH-MM-SS', '', false);
    insert into comment_table values ('11000000020','YYYY-MM-DD', 'HH-MM-SS', '', false);
    insert into comment_table values ('11000000021','YYYY-MM-DD', 'HH-MM-SS', '', false);
    insert into comment_table values ('11000000022','YYYY-MM-DD', 'HH-MM-SS', '', false);
    insert into comment_table values ('11000000023','YYYY-MM-DD', 'HH-MM-SS', '', false);
    insert into comment_table values ('11000000024','YYYY-MM-DD', 'HH-MM-SS', '', false);
    insert into comment_table values ('11000000025','YYYY-MM-DD', 'HH-MM-SS', '', false);
    insert into comment_table values ('11000000026','YYYY-MM-DD', 'HH-MM-SS', '', false);
    insert into comment_table values ('11000000027','YYYY-MM-DD', 'HH-MM-SS', '', false);
    insert into comment_table values ('11000000028','YYYY-MM-DD', 'HH-MM-SS', '', false);
    insert into comment_table values ('11000000029','YYYY-MM-DD', 'HH-MM-SS', '', false);
        


-- posts --
    insert into post_table (coment_id, user_id, article_id)
                    values ('11000000000', '900000000', '80000000');

    insert into post_table ('11000000001', '900000001', '80000001');
    insert into post_table ('11000000002', '900000001', '80000029');
    insert into post_table ('11000000003', '900000003', '80000023');
    insert into post_table ('11000000004', '900000004', '80000004');
    insert into post_table ('11000000005', '900000005', '80000002');
    insert into post_table ('11000000006', '900000003', '80000014');
    insert into post_table ('11000000007', '900000006', '80000014');
    insert into post_table ('11000000008', '900000007', '80000028');
    insert into post_table ('11000000009', '900000008', '80000016');
    insert into post_table ('11000000010', '900000009', '80000009');
    insert into post_table ('11000000011', '900000010', '80000019');
    insert into post_table ('11000000012', '900000011', '80000012');
    insert into post_table ('11000000013', '900000012', '80000001');
    insert into post_table ('11000000014', '900000013', '80000005');
    insert into post_table ('11000000015', '900000014', '80000007');
    insert into post_table ('11000000000', '900000025', '80000007');
    

-- replies --
    insert into reply_table (reply_id, comment_id, user_id, article_id)
                        values('11000000016', '11000000016', '900000000', '80000000');

    insert into reply_table ('11000000017', '11000000017', '900000000', '80000011');
    insert into reply_table ('11000000018', '11000000018', '900000001', '80000010');
    insert into reply_table ('11000000019', '11000000019', '900000002', '80000009');
    insert into reply_table ('11000000020', '11000000020', '900000003', '80000008');
    insert into reply_table ('11000000021', '11000000021', '900000004', '80000007');
    insert into reply_table ('11000000022', '11000000022', '900000005', '80000006');
    insert into reply_table ('11000000023', '11000000023', '900000006', '80000005');
    insert into reply_table ('11000000024', '11000000024', '900000007', '80000004');
    insert into reply_table ('11000000025', '11000000025', '900000008', '80000003');
    insert into reply_table ('11000000026', '11000000026', '900000009', '80000002');
    insert into reply_table ('11000000027', '11000000027', '900000010', '80000001');
    

-- like/dislikes --
    insert into likes_dislikes_table (likes_id, likes, user_id, article_id)
                    values ('11000000000', true, '9000000000', '80000000')

    insert into likes_dislikes_table values ('11000000000', true , '9000000000', '80000001')
    insert into likes_dislikes_table values ('11000000001', true , '9000000002', '80000001')
    insert into likes_dislikes_table values ('11000000002', true , '9000000001', '80000001')
    insert into likes_dislikes_table values ('11000000003', false, '9000000001', '80000002')
    insert into likes_dislikes_table values ('11000000004', false, '9000000004', '80000002')
    insert into likes_dislikes_table values ('11000000005', true , '9000000003', '80000002')
    insert into likes_dislikes_table values ('11000000006', false, '9000000006', '80000003')
    insert into likes_dislikes_table values ('11000000007', true , '9000000003', '80000004')
    insert into likes_dislikes_table values ('11000000008', true , '9000000006', '80000005')
    insert into likes_dislikes_table values ('11000000009', false, '9000000007', '80000006')
    insert into likes_dislikes_table values ('11000000010', false, '9000000008', '80000006')
    insert into likes_dislikes_table values ('11000000011', false, '9000000009', '80000006')
    insert into likes_dislikes_table values ('11000000012', true , '9000000001', '80000007')
    insert into likes_dislikes_table values ('11000000013', true , '9000000003', '80000007')
    insert into likes_dislikes_table values ('11000000014', true , '9000000002', '80000007')
    insert into likes_dislikes_table values ('11000000015', true , '9000000004', '80000007')
