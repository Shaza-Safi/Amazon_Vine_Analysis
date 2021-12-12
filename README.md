# Amazon_Vine_Analysis

## Project Oberview:
In this project I am a data analyst at BigMarket, a startup that helps businesses optimize their marketing efforts. I am assigned to analyze Amazon reviews written by members of the paid Amazon Vine program. The Amazon Vine program is a service that allows manufacturers and publishers to receive reviews for their products. Companies like SellBy pay a small fee to Amazon and provide products to Amazon Vine members, who are then required to publish a review.

## Requirements for Analysis:
In order to perform the analysis, I used PySpark to perform the ETL process to extract the dataset, transform the data, connect to an AWS RDS instance, and load the transformed data into pgAdmin. Next, I have used SQL to determine if there is any bias toward favorable reviews from Vine members in my dataset. Then, you’ll write a summary of the analysis for Jennifer to submit to the SellBy stakeholders.

The dataset that i have used for this challenge is:
https://s3.amazonaws.com/amazon-reviews-pds/tsv/amazon_reviews_us_Toys_v1_00.tsv.gz

## Results:

### Total number of reviews:

#### Total number of for each Vine Reviews (Y) & Non Vine-Reviews (N):

![Total_groupby_vine](https://user-images.githubusercontent.com/88908758/145713510-e571be74-e396-4570-9caa-fa6079a4411b.PNG)

#### Ttal number of reviews for both Vine and Non Vine program:

![Total_reviews](https://user-images.githubusercontent.com/88908758/145713531-90bdd4d2-5e60-4538-b352-aba6cf72d1c2.PNG)


### Total number of 5-star reviews:

#### Total number of 5-star reviews for each Vine Review Non Vine-Reviews:

![5star_reviews_groupby_vibe](https://user-images.githubusercontent.com/88908758/145713569-4e50d883-c045-4c6b-a0a7-77d998d0b767.PNG)

#### Total number of 5-star reviews:

![Total_5star_reviews](https://user-images.githubusercontent.com/88908758/145713631-146e4536-0907-4c35-945f-94e153f004e2.PNG)

### Percentage of 5-star reviews:

#### Percentage of 5-star Vine Reviews:

![percentage_paid_5star_reviews](https://user-images.githubusercontent.com/88908758/145713671-e5f6fd93-6546-45c4-a5ee-656f9d600548.PNG)

#### Percentage of 5-star Non Vine-Reviews:

![percentage_unpaid_5star_reviews](https://user-images.githubusercontent.com/88908758/145713677-b40e4b21-9d06-439c-9ebe-65fe39e06bb9.PNG)

## Summary:
In summary, 34% of the reviews in the Vine program were 5-stars reviews whereas the percentage in the non-Vine reviews is only 48%. This describes a negative bias for reviews in the Vine program.
Additionally we could analyze the statistical distribution (mean, median and mode) of the star rating for the Vine and non-Vine reviews.
