USE sakila;

#Get film ratings.

SELECT DISTINCT rating
FROM FILM;

#Get release years.

SELECT DISTINCT release_year
FROM film;

#Get all films with ARMAGEDDON in the title.

SELECT title
FROM film
where title REGEXP 'ARMAGEDDON';

#Get all films with APOLLO in the title

SELECT title
FROM film
where title REGEXP 'APOLLO';

#Get all films which title ends with APOLLO.

SELECT title
FROM film
WHERE title REGEXP 'APOLLO$';

#Get all films with word DATE in the title.

SELECT title
FROM film
WHERE title
REGEXP '(^|[[:space:]])date([[:space:]]|$)';

#Get 10 films with the longest title.

SELECT film_id, title, LENGTH(title) 
FROM film
ORDER BY LENGTH(title) desc;

#Get 10 the longest films.

SELECT film_id, title, length 
FROM film
ORDER BY length DESC
LIMIT 10;

#How many films include Behind the Scenes content?

select COUNT(*) from film
where special_features regexp "behind the scenes";


#List films ordered by release year and title in alphabetical order.

SELECT title, release_year
FROM film
ORDER BY title asc, release_year asc;

