SQL Lab
https://gist.github.com/blake41/51fe32d3ad9bd11b07ab
 
#pin #activity
 
For creating tables in mysql and doing autoincrementing primary keys
 
CREATE TABLE nicknames(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nickname TEXT,
  wizard_id INT
);

================= ACTIVITY =================================

You can write your SQL statements in Sequel Pro and then save them to individual text files with a .sql extension.

### 1. schema.sql 

Create a schema.sql file to make the following database structure

  - Users have a name.
  - Quizzes have a name.
  - Questions have content and belong to a quiz. (Each question only belongs to 1 quiz)
  - Choices have content, can be correct or not, and belong to a question.
  - Answers belong to a user, a question, and a choice.

  Your response should be in the format of a series of sql commands like:

    CREATE TABLE user (
      /* do some sql magic here */
    );
    /* etc ... */

### 2. insert.sql

Write an insert.sql file to create the following data:

  - There should be 3 users.
  - There should be 2 quizzes.
  - Each quiz has 5 questions.
  - Each question has 4 answers.

  Answers should be inserted into questions via a multi-insert.

### 3. update.sql

Write an update.sql that will update user with id 1's name.

### 4. quiz.sql

Create a quiz.sql file that will display all questions in a quiz.

### 5. answers.sql

Create an answers.sql that will display all the answers for a particular question.

### 6. take_test.sql

Create a take_test.sql for each user that multi inserts their answers for.

  Every user has taken both quizzes and answered all questions.

  - User 1 has gotten a perfect
  - User 2 has answer 3/5 correct.
  - User 3 has answered 1/5 correct.

### 7. grading.sql

Create a grading.sql that will grade each quiz for each user. 
  - These should be using joins.
  - The goal is to show how many correct answers a user got.

### 8. stats.sql

Create a stats.sql that will show the percentage or total right answers. 
  
  Do percentage if you want to try to use MATH functions within SQL This will need to use joins too and might get complicated.

### BONUS

Add Indexes to optimize queries.

Explore explain and see if you can understand performance.