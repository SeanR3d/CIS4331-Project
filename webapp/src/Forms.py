from wtforms import Form, StringField, PasswordField, validators, SubmitField


class UserRegistrationForm(Form):
    user_login = StringField('User login', [validators.DataRequired(), validators.Length(min=1, max=25)])
    user_password = PasswordField('Password', [validators.DataRequired(), validators.Length(min=2, max=30)])
    user_id = StringField('User id', [validators.DataRequired(), validators.Length(min=9, max=9)])
    user_name = StringField('Name', [validators.DataRequired(), validators.Length(min=2, max=50)])
    email = StringField('Email Address', [validators.DataRequired(), validators.Length(min=5, max=35)])
    state = StringField('State', [validators.Length(min=2, max=35)])
    country = StringField('Country', [validators.Length(min=2, max=35)])

    submit = SubmitField('Sign Up')


class CustomerSearchForm(Form):
    customer_id = StringField('Customer ID', [validators.DataRequired(), validators.Length(min=7, max=7)])
    submit = SubmitField('Search')






