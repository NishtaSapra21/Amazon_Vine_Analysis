-- DELIVERABLE 2--

-- 1. Create a table deliverable2_1 to retrieve all rows where the totl_votes count is equal to or greater than 20.

select * into deliverable2_1 
from vine_table
where total_votes >= 20;

-- 2.Filter the delivearable2_1 table to retrieve all rows where number of helpful_votes divided by total_votes is equal to or greater than 50%.

select * into deliverable2_2
from deliverable2_1
where cast(helpful_votes as float)/cast(total_votes as float) >= 0.5;

-- 3. Create a table from deliverable2_2 that retrieves all rows where a review written as part of the Vine program(paid).

select * into deliverable2_3 
from deliverable2_2
where vine = 'Y';

-- 4. Create a table from deliverable2_2 that retrieves all rows where the review was not part of Vine program(unpaid).

select * into deliverable2_4 
from deliverable2_2
where vine = 'N';

-- 5. Calculate total number of reviews, the number of five star revies and  percentage of five star reviews for paid types.

select count(*) as total_reviews_paid,
count(case
         when star_rating = 5
              then 1
         end) as fivestar_reviews_paid,
(cast(count(case when star_rating = 5 then 1 end) as float) * 100.0)/(cast(count(*) as float) )
as percentage_of_fivestar_reviews
from deliverable2_3;

-- 5. Calculate total number of reviews, the number of five star revies and percentage of five star reviews for unpaid types.

select count(*) as total_reviews_unpaid,
count(case
         when star_rating = 5
              then 1
         end) as fivestar_reviews_unpaid,
(cast(count(case when star_rating = 5 then 1 end) as float) * 100.0)/(cast(count(*) as float) )
as percentage_of_fivestar_reviews
from deliverable2_4;
