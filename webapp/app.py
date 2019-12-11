# $ export FLASK_APP=app.py
# $ flask run


from flask import Flask, render_template, flash, request, url_for, redirect, session
from src import mySQL, Forms
import gc
import json

app = Flask(__name__)
app.secret_key = "super secret key"

# articles = [
#     {
#         'author': 'Sean Red',
#         'title': 'Blog Post 1',
#         'content': 'First post content',
#         'date_posted': 'April 20, 2018'
#     },
#     {
#         'author': 'Jane Doe',
#         'title': 'Blog Post 2',
#         'content': 'Second post content',
#         'date_posted': 'April 21, 2018'
#     }
# ]

@app.route("/")
@app.route("/home")
def home():
    articles = list()
    articles = mySQL.getArticles()
    return render_template('home.html', articles=articles)


@app.route("/about")
def about():
    return render_template('about.html', title='About')


@app.route("/demo")
def demo():
    return render_template('demo.html', title='Demo')


@app.route("/customer", methods=["GET", "POST"])
def customer():
    try:
        form = Forms.CustomerSearchForm(request.form)

        if request.method == "POST" and form.validate():
            articles = mySQL.getArticles(form.customer_id.data)
            if articles is not None:
                return render_template('customer_results.html', title='Customer', articles=articles)

        return render_template('customer.html', title='Customer', form=form)

    except Exception as e:
        return str(e)


@app.route("/enable", methods=["POST"])
def enable():
    try:
        target_article = json.loads(request.form.get('button').replace("'", '"'))
        mySQL.setCommentsEnabled(int(target_article['comments_enabled']), target_article['article_id'])
        articles = mySQL.getArticles(target_article['customer_id'])
        return render_template('customer_results.html', title='Customer', articles=articles)
    except Exception as e:
        return str(e)


@app.route("/admin", methods=["GET", "POST"])
def admin():
    try:
        if request.method == "POST":
            if 'good_button' in request.form:
                target_comment = json.loads(request.form.get('good_button'))
                mySQL.toggleCommentFlag(target_comment, 0)
            elif 'bad_button' in request.form:
                target_comment = json.loads(request.form.get('bad_button'))
                mySQL.toggleCommentFlag(target_comment, 1)

        comments = mySQL.getDerogatoryFlaggedComments()
        return render_template('admin.html', title='Admin', comments=comments)

    except Exception as e:
        return str(e)


@app.route('/monitor')
def monitor():
    stats = mySQL.getMonitorStats()
    return render_template('monitor.html', title='Monitor', stats=stats)


@app.route('/register', methods=["GET", "POST"])
def register():
    try:
        form = Forms.UserRegistrationForm(request.form)

        if request.method == "POST" and form.validate():
            user = dict()
            user["user_login"] = form.user_login.data
            user["user_password"] = form.user_password.data
            user["user_id"] = form.user_id.data
            user["user_name"] = form.user_name.data
            user["email"] = form.email.data
            user["state"] = form.state.data
            user["country"] = form.country.data

            mySQL.insertUser(user)
            flash("Thanks for registering!")
            gc.collect()

            session['logged_in'] = True
            session['user_login'] = user["user_login"]

            return redirect(url_for('home'))

        return render_template('register.html', title='Register', form=form)

    except Exception as e:
        return str(e)


@app.route('/article')
def article():
    try:
        article_id = request.args.get('article_id', None)
        full_article = mySQL.getFullArticle(article_id)
        return render_template('article.html', title='Article', article=full_article)

    except Exception as e:
        return str(e)


if __name__ == '__main__':
    app.run(debug=True)
