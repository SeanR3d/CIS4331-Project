import mysql.connector
import json

default_avatar = r"static\default_avatar.png"


def connect():
    con = mysql.connector.connect(
        host="35.185.33.115",
        port="3306",
        user="root",
        database="project_db"
    )
    return con


def getArticles(customer_id=None):
    con = connect()
    cur = con.cursor()
    res = None
    articles = list()

    try:
        if customer_id is None:
            sql = "select * from article_table"
            cur.execute(sql)
        else:
            sql = "select * from article_table where customer_id = %s"
            cur.execute(sql, (customer_id,))

        res = cur.fetchall()
    except Exception as e:
        print("Exeption thrown: %s", e)

    finally:
        con.close()

    if res is None:
        return None

    for row in res:
        articles.append({
            'article_id': str(row[0]),
            'customer_id': str(row[1]),
            'order_id': str(row[2]),
            'title': str(row[3]),
            'author': str(row[4]),
            'date_posted': str(row[5]),
            'last_updated': str(row[6]),
            'content': str(row[7]),
            'comments_enabled': str(row[8])
        })

    return articles


def getFullArticle(article_id):
    con = connect()
    cur = con.cursor()
    res = None
    article = dict()

    try:

        sql = "select * from article_table where article_id = %s"
        cur.execute(sql, (article_id,))
        res = cur.fetchone()

    except Exception as e:
        print("Exeption thrown: %s", e)

    finally:
        con.close()

    if res is None:
        return None

    article = {
        'article_id': str(res[0]),
        'customer_id': str(res[1]),
        'order_id': str(res[2]),
        'title': str(res[3]),
        'author': str(res[4]),
        'date_posted': str(res[5]),
        'last_updated': str(res[6]),
        'content': str(res[7]),
        'comments_enabled': str(res[8]),
        'comments_list': getComments(article_id)
    }

    return article


def getComments(article_id):
    con = connect()
    cur = con.cursor()
    res = None
    comments = list()

    try:

        sql = """
                select *
                from (select *
                from comment_table
                natural join post_table) as CP
                where CP.article_id = %s;
        """
        cur.execute(sql, (article_id,))
        res = cur.fetchall()

    except Exception as e:
        print("Exeption thrown: %s", e)

    finally:
        con.close()

    if res is None:
        return None

    for comment in res:
        comments.append({
            'comment_id': comment[0],
            'comment_datetime': comment[1],
            'content': comment[2],
            'derogatory_flag': comment[3],
            'post_id': comment[4],
            'user_id': comment[5],
            'article_id': comment[6],
            'replies_list': getReplies(comment[0])
        })

    return comments


def getDerogatoryFlaggedComments():
    con = connect()
    cur = con.cursor()
    res = None
    comments = list()

    try:

        sql = """
            select *
            from comment_table
            where comment_table.derogatory_flag = 1;
        """
        cur.execute(sql)
        res = cur.fetchall()

    except Exception as e:
        print("Exeption thrown: %s", e)

    finally:
        con.close()

    if res is None:
        return None

    for comment in res:
        temp = {
            "comment_id": comment[0],
            "comment_datetime": str(comment[1]),
            "content": comment[2],
            "derogatory_flag": comment[3]
        }
        temp['json'] = json.dumps(temp)
        comments.append(temp)

    return comments


def toggleCommentFlag(comment, toggle):
    con = connect()
    cur = con.cursor()

    try:
        sql = """
            update comment_table
            set comment_table.derogatory_flag = %s
            where (comment_table.comment_id = %s);
        """
        cur.execute(sql, (toggle, comment['comment_id'],))
        con.commit()

    except Exception as e:
        print("Exeption thrown: %s", e)

    finally:
        con.close()


def getReplies(comment_id):
    con = connect()
    cur = con.cursor()
    res = None
    replies = list()

    try:

        sql = """
                select *
                from comment_table, (select *
                        from reply_table
                        where comment_id = %s
                     ) as R
                where comment_table.comment_id = R.reply_id;
        """
        cur.execute(sql, (comment_id,))
        res = cur.fetchall()

    except Exception as e:
        print("Exeption thrown: %s", e)

    finally:
        con.close()

    if res is None:
        return None

    for reply in res:
        replies.append({
            'comment_id': reply[0],
            'comment_datetime': reply[1],
            'content': reply[2],
            'derogatory_flag': reply[3],
            'reply_id': reply[4],
            'user_id': reply[5],
            'article_id': reply[6]
        })

    return replies


def setCommentsEnabled(enabled, article_id):
    con = connect()
    cur = con.cursor()
    res = None
    sql = "update article_table set comments_enabled = %s where article_id = %s"
    if enabled == 1:
        enabled = 0
    else:
        enabled = 1

    try:
        res = cur.execute(sql, (enabled, article_id))
        con.commit()
        res = cur.rowcount
    except Exception as e:
        print("Exeption thrown: %s", e)

    finally:
        con.close()

    if res is None:
        return None


def insertUser(user):

    con = connect()
    cur = con.cursor()

    with open(default_avatar, 'rb') as f:
        avatar = f.read()

    sql = """
          INSERT INTO user_table (user_id, user_name, email, state, country, user_login, user_password, avatar)
          VALUES (%s, %s, %s, %s, %s, %s, %s, %s)
          """
    # vals = ("000000001", "sean", "sean@sean.com", "PA", "USA", "sean", "sean", avatar)
    vals = (user["user_id"], user["user_name"], user["email"], user["state"],
            user["country"], user["user_login"], user["user_password"], str(avatar))

    try:
        cur.execute(sql, vals)
        con.commit()
        print(cur.rowcount, "record inserted.")
    except Exception as e:
        print(str(e))
        raise

    finally:
        con.close()

    return True


def getMonitorStats():

    con = connect()
    cur = con.cursor()
    query_list = list()
    query_results = list()

    # Give the top-20 users by the number of comments they post.
    query_list.append("""
            select user_login, posts.post_count
            from user_table as users,
                (select user_id, count(user_id) post_count
                    from post_table
                    group by user_id)
                as posts
            where users.user_id = posts.user_id
            order by posts.post_count desc
            limit 20;
    """)

    try:
        for query in query_list:
            cur.execute(query)
            result = cur.fetchall()
            for row in result:
                query_results.append({
                    'user_login': row[0],
                    'post_count': row[1]
                })

    except Exception as e:
        print(str(e))
        raise

    finally:
        con.close()

    return query_results


if __name__ == '__main__':
    # insertUser(None)
    getArticles('7000000')
