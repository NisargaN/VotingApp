Here is the documentation:

Ruby version : 2.3.1

Rails version : 5.2.0

Database : PostgreSQL as the database for ActiveRecord.

Gemfile : 
	*devise
	*recaptcha
	*Cocoon
	*byebug

CSS : I have incorporated bootstrap css.

Deployment : Deployed on Heroku

Application Flow :  
	A User has to first sign up/register to participate in the voting process. 
If the user logs in an Admin, then he can add polls by creating questions and providing suitable options to them.He can send the URL of the poll to other users. They have to sign in to vote. The Admin can see the results of the poll in his dashboard for the different questions.

If the user is not an admin, then he would have received a URL from the Admin. He can then sign in and participate in the poll. He casts his vote. He can vote only once.

Thus the polling results can be viewed by the Admin and analyzed.

