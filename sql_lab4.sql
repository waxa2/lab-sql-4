use sakila;
-- 1. Get film ratings.
SELECT DISTINCT rating
FROM film;

-- 2. Get release years.
SELECT DISTINCT release_year
FROM film;

-- 3. Get all films with ARMAGEDDON in the title.
SELECT DISTINCT title
FROM film
WHERE title like '%ARMAGEDDON%';

-- 4. Get all films with APOLLO in the title
SELECT DISTINCT title
FROM film
WHERE title like '%APOLLO%';

-- 5. Get all films which title ends with APOLLO.
SELECT DISTINCT title
FROM film
WHERE title like '%APOLLO';

-- 6. Get all films with word DATE in the title.
SELECT DISTINCT title
FROM film
WHERE title like '% DATE%';

-- 7. Get 10 films with the longest title.
SELECT *, length(title) as title_length
FROM film
ORDER BY length(title) DESC
LIMIT 10 ;

-- 8 . Get 10 the longest films.
SELECT *
FROM film
ORDER BY length desc
LIMIT 10;

-- 9. How many films include Behind the Scenes content?
SELECT DISTINCT (COUNT(special_features)) as amount_behind_scenes
FROM film
WHERE special_features like '%Behind the Scenes%';

-- 10 List films ordered by release year and title in alphabetical order.
SELECT *
FROM film
ORDER BY release_year, title;