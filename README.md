# Amazon_Vine_Analysis

## Project Oberview:
In this project I am a data analyst at BigMarket, a startup that helps businesses optimize their marketing efforts. I am assigned to analyze Amazon reviews written by members of the paid Amazon Vine program. The Amazon Vine program is a service that allows manufacturers and publishers to receive reviews for their products. Companies like SellBy pay a small fee to Amazon and provide products to Amazon Vine members, who are then required to publish a review.

## Requirements for Analysis:
In order to perform the analysis, I used PySpark to perform the ETL process to extract the dataset, transform the data, connect to an AWS RDS instance, and load the transformed data into pgAdmin. Next, I have used SQL to determine if there is any bias toward favorable reviews from Vine members in my dataset. Then, you’ll write a summary of the analysis for Jennifer to submit to the SellBy stakeholders.

The dataset that i have used for this challenge is:
https://s3.amazonaws.com/amazon-reviews-pds/tsv/amazon_reviews_us_Toys_v1_00.tsv.gz

## Results:

### Total number of reviews:

Vine Reviews:



Non Vine-Reviews:



### Total number of 5-star reviews:

Vine Reviews:


Non Vine-Reviews:


### Percentage of 5-star reviews:

Vine Reviews:


Non Vine-Reviews:


## Summary:
In summary, 34% of the reviews in the Vine program were 5-stars reviews whereas the percentage in the non-Vine reviews is only 48%. This describes a negative bias for reviews in the Vine program.
Additionally we could analyze the statistical distribution (mean, median and mode) of the star rating for the Vine and non-Vine reviews.
