use sakila;


-- 1

select first_name, last_name, (count(last_name) over (partition by Last_name) = 1) as "Nb_last_name" from actor;

-- above was just a try

select distinct last_name, first_name from actor;

-- 2

select last_name,count(last_name) as Nb_lastn from actor
group by last_name
having count(last_name) > 1;

-- 3

select * from rental;
select customer_id, count(customer_id) from rental
group by customer_id;

-- 4

select * from film;
select release_year, count(release_year) from film
group by release_year;

-- 5

select rating, count(rating) from film
group by rating;

-- 6

select rating, avg(length) from film
group by rating;

-- 7

select special_features, avg(length) from film
group by special_features
having avg(length) > 120;