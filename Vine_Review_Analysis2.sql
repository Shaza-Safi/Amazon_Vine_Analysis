CREATE TABLE review_id_table (
  review_id TEXT PRIMARY KEY NOT NULL,
  customer_id INTEGER,
  product_id TEXT,
  product_parent INTEGER,
  review_date DATE -- this should be in the formate yyyy-mm-dd
);

-- This table will contain only unique values
CREATE TABLE products_table (
  product_id TEXT PRIMARY KEY NOT NULL UNIQUE,
  product_title TEXT
);

-- Customer table for first data set
CREATE TABLE customers_table (
  customer_id INT PRIMARY KEY NOT NULL UNIQUE,
  customer_count INT
);

-- vine table
CREATE TABLE vine_table (
  review_id TEXT PRIMARY KEY,
  star_rating INTEGER,
  helpful_votes INTEGER,
  total_votes INTEGER,
  vine TEXT,
  verified_purchase TEXT
);

--Review that tables were created and data appended
SELECT * FROM review_id_table;
SELECT * FROM products_table;
SELECT * FROM customers_table;
SELECT * FROM vine_table;


-- *****Deliverable 2*****

--STEP 1
--Filter the data and create a new DataFrame or table to retrieve all the rows where the 
--total_votes count is equal to or greater than 20 to pick reviews that are more likely to 
--be helpful and to avoid having division by zero errors later on
SELECT *
INTO filtered_vine_table
FROM vine_table
WHERE total_votes >= 20;
 
--confirm table creation
SELECT COUNT(*) FROM filtered_vine_table;


--STEP 2
--Filter the new DataFrame or table created in Step 1 and create a new DataFrame or table to retrieve 
--all the rows where the number of helpful_votes divided by total_votes is equal to or greater than 50%.
--If you use the SQL option below, you’ll need to cast your columns as floats using WHERE CAST
--(helpful_votes AS FLOAT)/CAST(total_votes AS FLOAT) >=0.5.
SELECT * from filtered_vine_table;

SELECT * 
INTO filtered_vine_table_2
FROM filtered_vine_table 
WHERE CAST(helpful_votes AS FLOAT)/CAST(total_votes AS FLOAT) >=0.5;

--confirm table creation
SELECT COUNT(*) FROM filtered_vine_table_2;


--STEP 3
--Filter the DataFrame or table created in Step 2, and create a new DataFrame or table that retrieves all
--the rows where a review was written as part of the Vine program (paid), vine == 'Y'

SELECT *
INTO paid_reviews_table
FROM filtered_vine_table_2
WHERE vine = ('Y');

--confirm table creation
SELECT * FROM paid_reviews_table;
--count paid vine
SELECT COUNT(*) FROM paid_reviews_table;

--STEP 4
--Repeat Step 3, but this time retrieve all the rows where the review was not part of the Vine program
--(unpaid), vine == 'N'.

SELECT *
INTO unpaid_reviews_table
FROM filtered_vine_table_2
WHERE vine = ('N');

--Confirm table creation
SELECT * FROM unpaid_reviews_table;

--count unpaid vine
SELECT COUNT(*) FROM unpaid_reviews_table;


--STEP 5
-------------Determine the total number of reviews, the number of 5-star reviews, and the percentage of 5-star 
-------------reviews for the two types of review (paid vs unpaid).

-- Total number of reviews for each type of vine program (paid & unpaid):
select vine, count(review_id)
into total_groupby_vine
from filtered_vine_table_2
group by vine;

select * from total_groupby_vine;

-- Total number of vines  
select count(review_id)
into total_filtered_reviews
from filtered_vine_table_2;

select * from total_filtered_reviews;

---------------Total Number of 5star reviews

--Total Number of 5star reviews for each type of vine program (paid & unpaid):
SELECT vine, COUNT(review_id) FROM filtered_vine_table_2
WHERE star_rating = 5
GROUP BY vine;

-- Total number of 5star reviews
SELECT COUNT(review_id) 
FROM filtered_vine_table_2
WHERE star_rating = 5;

-------------- % of 5 star review for each type of vine program (paid & unpaid):
select vine, count(case when star_rating = 5 then 1 end)*100/sum(COUNT(*)) OVER () as Percentage_of_paid_5star
from paid_reviews_table
GROUP By vine; 

select vine, count(case when star_rating = 5 then 1 end)*100/sum(COUNT(*)) OVER () as Percentage_of_paid_5star
from unpaid_reviews_table
GROUP By vine; 
