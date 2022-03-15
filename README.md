# Amazon_Vine_Analysis

## Project Overview:
In this project I am a data analyst at BigMarket, a startup that helps businesses optimize their marketing efforts. I am assigned to analyze Amazon reviews written by members of the paid Amazon Vine program. The Amazon Vine program is a service that allows manufacturers and publishers to receive reviews for their products. Companies like SellBy pay a small fee to Amazon and provide products to Amazon Vine members, who are then required to publish a review.

## Requirements for Analysis:
In order to perform the analysis, I used PySpark to perform the ETL process to extract the dataset, transform the data, connect to an AWS RDS instance, and load the transformed data into pgAdmin. Next, I have used SQL to determine if there is any bias toward favorable reviews from Vine members in my dataset. Then, you’ll write a summary of the analysis for Jennifer to submit to the SellBy stakeholders.

The dataset that i have used for this challenge is:
https://s3.amazonaws.com/amazon-reviews-pds/tsv/amazon_reviews_us_Toys_v1_00.tsv.gz

## Results:

### Total number of reviews:

#### Total number of reviews for each type of reviews (Vine (Y) & Non Vine-Reviews (N)):

![Total_groupby_vine](https://user-images.githubusercontent.com/88908758/145714045-259e4406-085f-4506-bdca-5611bea3a41d.PNG)

#### Total number of reviews:

![Total_reviews](https://user-images.githubusercontent.com/88908758/145714056-204c535e-0922-4560-9998-17315890a8fb.PNG)

### Total number of 5-star reviews:

#### Total number of 5-star reviews for both Vine & Non Vine-Reviews:

![5star_reviews_groupby_vibe](https://user-images.githubusercontent.com/88908758/145714084-14d9340d-d1f6-4ee6-b115-ba8b07e971fa.PNG)

#### Total number of 5-star reviews:

![Total_5star_reviews](https://user-images.githubusercontent.com/88908758/145714066-a29a0cca-5976-4298-8e1b-2375ada62fe0.PNG)

### Percentage of 5-star reviews:

#### Percentage of 5-star Vine Reviews:

![percentage_paid_5star_reviews](https://user-images.githubusercontent.com/88908758/145714095-5f6c51b9-9def-424c-aea4-a39019872313.PNG)

#### Percentage of 5-star Non Vine-Reviews:

![percentage_unpaid_5star_reviews](https://user-images.githubusercontent.com/88908758/145714102-8e49bfb3-208e-4623-884e-e0eba4e8e8d1.PNG)

## Summary:
In summary, 34% of the reviews in the Vine program were 5-stars reviews whereas the percentage in the non-Vine reviews is only 48%. This describes a negative bias for reviews in the Vine program.
Additionally we could analyze the statistical distribution (mean, median and mode) of the star rating for the Vine and non-Vine reviews.
