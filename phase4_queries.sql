-- Give the top-20 users by the number of comments they post. --
select user_login, posts.post_count
from user_table as users,
	(select user_id, count(user_id) post_count
		from post_table
		group by user_id)
	as posts
where users.user_id = posts.user_id
order by posts.post_count desc
limit 20;


-- Give the top-20 users by the number of replies they post. --
select user_login, replies.reply_count
from user_table as users,
	(select user_id, count(user_id) reply_count
		from reply_table
		group by user_id)
	as replies
where users.user_id = replies.user_id
order by replies.reply_count desc
limit 20;


-- Give the top-20 users by the number of like/dislike they post. --
select user_login, ld.ld_count
from user_table as users,
	(select user_id, count(user_id) ld_count
		from likes_dislikes_table
        group by user_id)
	as ld
where users.user_id = ld.user_id
order by ld.ld_count desc
limit 20;

-- Give the top-10 websites with the most requests for article comments. --
select customer_name, requests
from customer_table
order by requests desc
limit 10;

-- Give the top-10 websites with the most sales this month/week/year. --
select customer_name, sales.num_sales
from customer_table,
	(select customer_id, count(*) num_sales
		from article_table
        group by customer_id)
	as sales
where customer_table.customer_id = sales.customer_id
order by sales.num_sales desc
limit 10;

