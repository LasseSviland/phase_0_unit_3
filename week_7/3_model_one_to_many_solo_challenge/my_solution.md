# U3.W7: Modeling a Real-World Database (SOLO CHALLENGE)

## Release 0: Users Fields

id = integer
username = varchar(50)
first_name = varchar(50)
first_name = varchar(50)
email = varchar(150)
picture = text
location = text
created_at = date
updated_at = date

## Release 1: Tweet Fields
<!-- Identify the fields Twitter uses to represent/display a tweet. What are you required or allowed to enter? --> 
id = integer
user_id = integer
contents = varchar(140)
picture = text
location = text
tags = varchar(140)
created_at = date
updated_at = date


## Release 2: Explain the relationship
The relationship between `users` and `tweets` is:  user can have many tweets, but a tweet can only be posted by one user. They are connencted witht he user id.

## Release 3: Schema Design
<!-- Include your image (inline) of your schema -->
![..](../imgs/twitter.jpg?raw=true)
## Release 4: SQL Statements
<!-- Include your SQL Statements. How can you make markdown files show blocks of code? -->
All tweets from a user id.
```
SELECT content FROM user JOIN tweet ON id=user_id WHERE user_id = 'theID'
```
All tweets from a user id after last wednesday 
```
SELECT content FROM user JOIN tweet ON id=user_id WHERE user_id = 'theID' AND tweet.created_at > "2014-04-23"
```
all form a user's twitter handle
```
SELECT content FROM user JOIN tweet ON id=user_id WHERE username = 'username'
```
the username from a tweet id
```
SELECT username FROM user JOIN tweet ON id=user_id WHERE tweet.id = 'theID'
```
## Release 5: Reflection
<!-- Be sure to add your reflection here!!! -->
I havent used twitter that much, so it was a bit hard getting the right collumns. 