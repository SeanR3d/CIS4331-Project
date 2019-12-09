select *
from (select *
from comment_table
natural join post_table) as CP
where CP.article_id = 80000003;


select *
from comment_table, post_table
where comment_table.comment_id = post_table.comment_id;

select *
from comment_table
natural join post_table;

select *
from comment_table, (select *
		from reply_table
		where comment_id = 11000000000
	 ) as R
where comment_table.comment_id = R.reply_id;
