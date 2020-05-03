-- Average rating with only helpful votes
SELECT avg(star_rating)
FROM vine_table
WHERE helpful_votes > 0

-- Average rating with entire population
SELECT avg(star_rating)
FROM vine_table

-- Total number of reviews with filtering
SELECT COUNT(review_id)
FROM vine_table
WHERE helpful_votes > 0


-- Total number of reviews without
SELECT COUNT(review_id)
FROM vine_table

-- joining vine and review tables
select vt.review_id,vt.star_rating,vt.helpful_votes, rt.product_id
into product_review
from vine_table as vt
inner join review_id_table as rt
	on (vt.review_id = rt.review_id)

-- determining which product is more popular based on helpful or not helpful votes
select count(product_id)
from product_review
where star_rating = 5 