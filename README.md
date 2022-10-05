# Amazon Vine Analysis

## Overview

  This analysis analyzes Amazon reviews written by members of the paid Amazon Vine program and generates a summary to determine if there is any bias toward favorable     reviews from Vine members in the dataset using PySpark, Pandas, or SQL. This analysis also performs ETL on Amazon Product Reviews using Amazon S3 and RDS services,     Google Colab with PySpark to  convert CSVs to DataFrames and finally in SQL tables. 

## Results

  Let’s compare paid and unpaid __vine_table__ summary that gives us insight to determine if there is any bias toward favorable reviews. Here, we are using data from     __Outdoor Products Reviews__. 

  Let’s have a look at following images and a comparison table. We are considering only that reviews where __total_reviews__ are more than 20 and __helpful_votes__       are   at least 50% of total votes.
  
  ![Vine_reviews_summary](https://user-images.githubusercontent.com/107717882/194166818-1cc660dc-dc31-4ff6-9631-7b9d24420249.png)

  
  ![non_Vine_reviews_summary](https://user-images.githubusercontent.com/107717882/194166870-8bd18428-5837-49f8-b57a-3e3a4f7d6e85.png)


	
|     Amazon Reviews       |Total Reviews	  |Five Star Reviews |% Five Star Reviews|
|--------------------------|----------------|------------------|-------------------|
|Vine(Paid) Reviews        |107	           |56	              |52                 |
|Non-Vine(Unpaid) Reviews	|39850	         |20996	            |53                 |


  * There are 107 Vine reviews and 39850 non-Vine reviews.

  * Among 107 total reviews 56 Vine reviews are 5 stars and among 39850 non-Vine reviews 20996 are 5 stars.

  * Approximately 52% of Vine reviews are five stars and 53% of non-Vine reviews are five stars. 

## Summary

   From results its obvious that around 50% of both paid and unpaid revies are of 5 star reviews. This is showing that paid and unpaid reviews are balanced, there’s no    bias toward favorable reviews. Reviews seems honest and trustworthy. There are also very less Vine reviews compared to non-Vine reviews. 

   Also, we considered only 5-star reviews which is 50% of total reviews, we can perform same operations on range of 3-to-5-star reviews and see how much percentage      we can get for both Vine and non-Vine reviews. Here we exactly don’t know about rest of the 50% reviews, what’s their rating.  
  
   Also, we can consider large populations of reviews, like 100 or more per product.
