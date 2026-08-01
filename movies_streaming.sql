#-->PART 1:
CREATE DATABASE streaming_platform;
USE streaming_platform;

#-->Table Users:

CREATE TABLE users(
 user_id INT PRIMARY KEY,
 U_name VARCHAR(50) NOT NULL,
 email VARCHAR(100) UNIQUE,
 country VARCHAR(50),
 signup_date DATE
);
  INSERT INTO Users (user_id, U_name, email, country, signup_date) VALUES
(1,'Rahul Sharma','rahul@gmail.com','India','2023-01-12'),
(2,'Priya Singh','priya@gmail.com','India','2023-02-10'),
(3,'John Miller','john@gmail.com','USA','2023-03-15'),
(4,'Aman Gupta','aman@gmail.com','India','2023-04-20'),
(5,'Emily Clark','emily@gmail.com','UK','2023-05-01'),
(6,'Rohit Verma','rohit@gmail.com','India','2023-06-12'),
(7,'Sophia Lee','sophia@gmail.com','Singapore','2023-07-14'),
(8,'Arjun Mehta','arjun@gmail.com','India','2023-08-02'),
(9,'David Brown','david@gmail.com','Canada','2023-09-09'),
(10,'Neha Kapoor','neha@gmail.com','India','2023-10-22'),
(11,'Ashna Rana','ashna@gmail.com','India','2023-11-11'),
(12,'Sara Ali','sara@gmail.com','Canada','2023-05-13'),
(13,'Srishti Sharma','srishti@gmail.com','Germany','2023-04-22'),
(14,'Aarushi Mehta','arushi@gmail.com','Canada','2023-10-22'),
(15,'Seema Thakur','seema@gmail.com','India','2023-01-14'),
(16,'Rosh Mehta','rosh@gmail.com','India','2023-12-10'),
(17,'Sanya Agarwal','sanya@gmail.com','UK','2023-08-22'),
(18,'Pankaj Kohli','pankaj@gmail.com','India','2023-10-22'),
(19,'Paras Sharma','paras@gmail.com','India','2023-12-30'),
(20,'Srijan Thakur','srijan@gmail.com','Germany','2023-04-18');
SELECT * FROM users;

#-->Table Subscription:

CREATE TABLE subscription(
 sub_id INT PRIMARY KEY,
 User_id INT,
 plan_type VARCHAR(20),
 price DECIMAL(6,2),
 start_date DATE,
 end_date DATE,
 CONSTRAINT fk_id FOREIGN KEY(user_id)
 REFERENCES users(user_id) ON UPDATE CASCADE ON DELETE CASCADE
);

INSERT INTO Subscription (sub_id, user_id, plan_type, price, start_date, end_date) VALUES
(1,1,'Basic',199,'2023-01-12','2023-02-12'),
(2,2,'Premium',499,'2023-02-10','2023-03-10'),
(3,3,'Standard',299,'2023-03-15','2023-04-15'),
(4,4,'Premium',499,'2023-04-20','2023-05-20'),
(5,5,'Basic',199,'2023-05-01','2023-06-01'),
(6,6,'Standard',299,'2023-06-12','2023-07-12'),
(7,7,'Premium',499,'2023-07-14','2023-08-14'),
(8,8,'Basic',199,'2023-08-02','2023-09-02'),
(9,9,'Standard',299,'2023-09-09','2023-10-09'),
(10,10,'Premium',499,'2023-10-22','2023-11-22'),
(11,11,'Premium',499,'2023-01-09','2023-02-09'),
(12,12,'Basic',199,'2023-05-19','2023-06-19'),
(13,13,'Standard',299,'2023-11-26','2023-12-26'),
(14,14,'Basic',199,'2023-10-30','2023-11-30'),
(15,15,'Premium',499,'2023-06-21','2023-07-21'),
(16,16,'Premium',499,'2023-10-22','2023-11-22'),
(17,17,'Standard',299,'2023-04-13','2023-05-13'),
(18,18,'Standard',299,'2023-08-07','2023-09-07'),
(19,19,'Basic',199,'2023-05-20','2023-06-20'),
(20,20,'Premium',499,'2023-02-11','2023-03-11');
SELECT * FROM subscription;

#-->Table Movies:

CREATE TABLE Movies(
 movie_id INT Primary Key,
 title VARCHAR(100),
 genre VARCHAR(50),
 release_year INT,
 duration INT
);
 INSERT INTO Movies (movie_id, title, genre, release_year, duration) VALUES
(1,'The Last Kingdom','Action',2022,130),
(2,'Love Forever','Romance',2021,110),
(3,'Space Mission','Sci-Fi',2023,140),
(4,'Haunted Night','Horror',2020,95),
(5,'The Detective','Thriller',2022,125),
(6,'Comedy House','Comedy',2019,100),
(7,'Future World','Sci-Fi',2024,135),
(8,'Family Trip','Drama',2021,115),
(9,'War Zone','Action',2023,145),
(10,'Mystery Lake','Thriller',2020,120),
(11,'Mystery Lake','Comedy',2024,115),
(12,'Mystery Lake','Romance',2021,100),
(13,'Mystery Lake','Drama',2022,130),
(14,'Anaconda','Thriller',2020,120),
(15,'Jigsaw','Thriller',2020,115),
(16,'Gravity','Sci-Fi',2023,145),
(17,'Christmas','Comedy',2022,135),
(18,'Spiderman','Action',2020,120),
(19,'The Cabin','Horror',2024,100),
(20,'Destination','Thriller',2020,115);
SELECT * FROM movies;

#-->Table Watch_History:

CREATE TABLE Watch_History(
 watch_id INT Primary Key,
 user_id INT,
 movie_id INT,
 watch_date DATE,
 watch_time INT,
 CONSTRAINT fk_uid FOREIGN KEY(user_id)
 REFERENCES users(user_id) ON UPDATE CASCADE ON DELETE CASCADE,
 CONSTRAINT fk_mid FOREIGN KEY(movie_id)
 REFERENCES movies(movie_id) ON UPDATE CASCADE ON DELETE CASCADE
);

INSERT INTO Watch_History (watch_id, user_id, movie_id, watch_date, watch_time) VALUES
(1,1,3,'2024-01-10',120),
(2,2,1,'2024-01-12',130),
(3,3,5,'2024-01-14',100),
(4,4,2,'2024-01-16',90),
(5,5,4,'2024-01-18',80),
(6,6,3,'2024-01-19',110),
(7,7,7,'2024-01-20',135),
(8,8,9,'2024-01-22',140),
(9,9,6,'2024-01-23',95),
(10,10,10,'2024-01-25',120),
(11,11,5,'2024-02-01',110),
(12,12,13,'2024-02-03',125),
(13,13,7,'2024-02-04',130),
(14,14,9,'2024-02-05',140),
(15,15,12,'2024-02-06',120),
(16,16,8,'2024-01-06',140),
(17,17,11,'2024-03-10',120),
(18,18,10,'2024-05-20',110),
(19,19,20,'2024-01-15',100),
(20,20,14,'2024-02-19',90);
SELECT * FROM watch_history;

#-->Table Ratings:

CREATE TABLE ratings(
 rating_id INT Primary Key,
 user_id INT,
 movie_id INT,
 rating INT ,CONSTRAINT chk_rat CHECK (rating BETWEEN 1 AND 5),
 review_date DATE,
 CONSTRAINT fk_usid FOREIGN KEY(user_id)
 REFERENCES users(user_id) ON UPDATE CASCADE ON DELETE CASCADE,
 CONSTRAINT fk_moid FOREIGN KEY(movie_id)
 REFERENCES movies(movie_id) ON UPDATE CASCADE ON DELETE CASCADE
 );
 INSERT INTO Ratings (rating_id, user_id, movie_id, rating, review_date) VALUES
(1,1,3,5,'2024-01-11'),
(2,2,1,4,'2024-01-12'),
(3,3,5,4,'2024-01-15'),
(4,4,2,3,'2024-01-17'),
(5,5,4,5,'2024-01-19'),
(6,6,13,4,'2024-01-20'),
(7,7,7,5,'2024-01-21'),
(8,8,9,4,'2024-01-22'),
(9,9,16,3,'2024-01-23'),
(10,10,10,5,'2024-01-14'),
(11,11,20,2,'2024-01-26'),
(12,12,11,4,'2024-01-06'),
(13,13,10,5,'2024-01-26'),
(14,14,1,4,'2024-01-15'),
(15,15,14,2,'2024-01-26'),
(16,16,8,5,'2024-01-26'),
(17,17,7,3,'2024-01-26'),
(18,18,5,5,'2024-01-11'),
(19,19,17,4,'2024-01-20'),
(20,20,12,5,'2024-01-30');
SELECT * FROM ratings;

#-->PART 2:
#->Display all users from India.
SELECT * FROM users
WHERE country="India";

#->List all movies released after 2020.
SELECT * FROM movies 
WHERE release_year>2020;

#->Show users who have a Premium plan.
SELECT * FROM subscription
WHERE plan_type="Premium";

#->Find movies with duration greater than 120 minutes.
SELECT title,duration FROM movies
WHERE duration>120;

#->Display top 10 latest movies.
SELECT title, release_year FROM movies
ORDER BY release_year desc LIMIT 10;

#-->PART 3:
#->Count number of users per country.
SELECT country, COUNT(*) AS Users
FROM users
GROUP BY country;

#->Find total revenue generated from subscriptions.
SELECT SUM(price) AS Total_Revenue
FROM subscription;

#->Calculate average movie duration per genre.
SELECT genre, AVG(duration) AS Avg_Duration
FROM movies
GROUP BY genre;

#->Find total watch time per user.
SELECT user_id, SUM(watch_time) AS Total_watchtime
FROM watch_history
GROUP BY user_id;

#->Show top 5 most watched movies.
SELECT title, sum(watch_time) AS Watch_Time
FROM movies
JOIN watch_history ON movies.movie_id=watch_history.movie_id
GROUP BY movies.movie_id
ORDER BY watch_time DESC
LIMIT 5;

#-->PART 4:
#->Display user name, movie title, and watch date.
SELECT u_name, title, watch_date
FROM users
JOIN watch_history ON users.user_id=watch_history.user_id
JOIN movies ON watch_history.movie_id=movies.movie_id;

#->Show movies watched by users from India.
SELECT title
FROM movies
JOIN watch_history ON movies.movie_id=watch_history.movie_id
JOIN  users ON users.user_id=watch_history.user_id
WHERE country="India";

#->Display users and their subscription plans.
SELECT u_name, plan_type
FROM users
JOIN subscription ON Users.user_id=subscription.user_id;

#->Find average rating for each movie.
SELECT title, AVG(rating) AS Avg_Rating
FROM movies
JOIN ratings ON movies.movie_id=ratings.movie_id
GROUP BY title;


#->Show movies with rating greater than 4.
SELECT title, rating
FROM movies
JOIN ratings ON movies.movie_id=ratings.movie_id
WHERE rating>4;

#-->PART 5:
#->Find movies with rating higher than average rating.
SELECT title
FROM movies
WHERE movie_id>(SELECT AVG(rating)
FROM ratings);

#->Find users who watched more movies than the average user.
SELECT  u_name
FROM users
WHERE user_id>(SELECT AVG(user_id)
FROM watch_history);

#->Find the most watched genre.
SELECT  genre, COUNT(*) AS Most_Watched
FROM movies GROUP BY genre
ORDER BY Most_Watched DESC LIMIT 1;

#->Find movies watched by more than 5 users.
SELECT movie_id, count(user_id) AS users
FROM watch_history
GROUP BY movie_id
HAVING users>5;

#-->PART 6:
#->Rank movies based on average rating.
SELECT title, AVG(rating) AS Average_rating,
DENSE_RANK()OVER(ORDER BY AVG(rating) DESC) AS Ranks
FROM movies
JOIN ratings ON movies.movie_id=ratings.movie_id
GROUP BY title;
 
#->Find top movie per genre.
SELECT genre, title,
dense_RANK()OVER(PARTITION BY genre ORDER BY AVG(rating) DESC) AS Ranks
FROM movies
JOIN ratings ON movies.movie_id=ratings.movie_id
GROUP BY genre,title;

#->Calculate running total of revenue by subscription date.
SELECT start_date, SUM(price) AS Total_Revenue
FROM subscription
GROUP BY start_date;

#-->PART 7:
#->Create a Stored Procedure to return movies by genre.
delimiter //
  CREATE PROCEDURE prc_101(IN g VARCHAR(20))
  BEGIN
  SELECT title FROM movies
  WHERE genre=g;
  END //
  delimiter ;
  CALL prc_101("horror");
  
#->Display user name, movie title, and rating.
delimiter //
  CREATE PROCEDURE prc_102(IN id INT)
  BEGIN
  SELECT u_name,title,rating FROM users
  JOIN ratings ON users.user_id=ratings.user_id
  JOIN movies ON movies.movie_id=ratings.movie_id
  WHERE users.user_id=id;
  END //
  delimiter ;
  CALL prc_102(1);

#->Show users who watched movies but did not rate them.
delimiter //
  CREATE PROCEDURE prc_103()
  BEGIN
  SELECT u_name FROM users
  JOIN ratings ON users.user_id=ratings.user_id
  WHERE ratings.user_id IS NULL;
  END //
  delimiter ;
  CALL prc_103();

#->Find movies that have never been watched.
delimiter //
  CREATE PROCEDURE prc_104()
  BEGIN
  SELECT title FROM movies
  LEFT JOIN watch_history ON movies.movie_id=watch_history.movie_id
  WHERE watch_history.movie_id IS NULL;
  END //
  delimiter ;
  CALL prc_104();

#-->Display user name, subscription plan, and price.
delimiter //
  CREATE PROCEDURE prc_105(IN id INT)
  BEGIN
  SELECT u_name, plan_type, price FROM users
  JOIN subscription ON users.user_id=subscription.user_id
  WHERE users.user_id=id;
  END //
  delimiter ;
  CALL prc_105(5);
  
#->Show top 5 users who watched the most movies.
delimiter //
  CREATE PROCEDURE prc_106()
  BEGIN
  SELECT u_name, COUNT(movie_id) FROM users
  JOIN watch_history ON users.user_id=watch_history.user_id
  GROUP BY users.user_id, u_name
  ORDER BY COUNT(movie_id) DESC LIMIT 5;
  END //
delimiter ;
CALL prc_106();
  
#-->Analytical Queries:
#->Find the most popular genre based on watch count.
SELECT genre AS Popular_Genre, COUNT(watch_history.movie_id) AS watch_count
FROM movies
JOIN watch_history ON movies.movie_id=watch_history.movie_id
GROUP BY movies.genre
ORDER BY watch_count DESC LIMIT 1;
  
#->Show top 3 movies with highest total watch time.
SELECT title, SUM(watch_time) AS watch_time
FROM movies
JOIN watch_history ON movies.movie_id=watch_history.movie_id
GROUP BY movies.title
ORDER BY watch_time DESC LIMIT 3;
  
#->Find the user who generated the highest subscription revenue.
SELECT u_name as user, price AS sub_revenue
FROM users
JOIN subscription ON users.user_id=subscription.user_id
ORDER BY sub_revenue DESC LIMIT 5;

#->Calculate percentage of movies that received ratings.

#->Find movies watched in more than one country.
SELECT title , count(distinct country) 
FROM movies
JOIN watch_history ON movies.movie_id=watch_history.movie_id
JOIN users ON users.user_id=watch_history.user_id
group by movies.movie_id,movies.title
having count(distinct country) >1;











