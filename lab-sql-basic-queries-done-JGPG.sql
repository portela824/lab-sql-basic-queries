-- Jose G Portela
USE sakila;
/* 1.Display all available tables in the Sakila database.*/
SHOW TABLES FROM sakila;
/* 2.Retrieve all the data from the tables actor, film and customer. */
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

/* 3.Retrieve the following columns from their respective tables:
3.1 Titles of all films from the film table
3.2 List of languages used in films, with the column aliased as language from the language table
3.3 List of first names of all employees from the staff table */

/* 3.1 */
SELECT title FROM film;
/* 3.2 */
SELECT language_id AS language FROM language;
/* 3.3 */
SELECT * FROM staff;
SELECT first_name FROM staff;

/*4.Retrieve unique release years.*/
SELECT DISTINCT release_year FROM film;

/* 5.Counting records for database insights:

5.1 Determine the number of stores that the company has.
5.2 Determine the number of employees that the company has.
5.3 Determine how many films are available for rent and how many have been rented.
5.4 Determine the number of distinct last names of the actors in the database. */

/*5.1*/
SELECT * FROM store;
SELECT COUNT(*) AS store_id FROM store;
/*5.2*/
SELECT * FROM staff;
SELECT COUNT(*) AS staff_id FROM staff;
/*5.3*/
SELECT COUNT(*) AS rental_rate FROM rental;
SELECT COUNT(*) AS film_id FROM inventory;
/*5.4*/
SELECT COUNT(*) AS last_name FROM actor;

/*6.Retrieve the 10 longest films.*/
SELECT * FROM film ORDER BY length DESC LIMIT 10;

/*7.Use filtering techniques in order to:

7.1 Retrieve all actors with the first name "SCARLETT".
BONUS:

7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
Hint: use LIKE operator. More information here.
7.3 Determine the number of films that include Behind the Scenes content*/

/*7.1*/
SELECT * FROM actor;
SELECT * FROM actor  WHERE first_name = "SCARLETT";
/*7.2*/
SELECT * FROM film;
SELECT * FROM film WHERE title like "%ARMAGEDDON%" and length > 100;
/*7.3*/
SELECT COUNT(*) FROM film WHERE special_features like "%Behind the Scenes%";