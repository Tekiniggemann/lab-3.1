-- 1. Drop column picture from staff.

USE sakila;
ALTER TABLE sakila.staff
DROP COLUMN picture;

SELECT * FROM sakila.staff;

-- 2. A new person is hired to help Jon. Her name is TAMMY SANDERS, and she is a customer. Update the database accordingly.
INSERT INTO sakila.staff (staff_id, first_name, last_name, address_id, email, store_id, active, username)
VALUES
(3, 'TAMMY', 'SANDERS', 79, 'TAMMY.SANDERS@sakilacustomer.org', 2, 1, 'tammy');
select * from sakila.staff;


-- 3. Add rental for movie "Academy Dinosaur" by Charlotte Hunter from Mike Hillyer at Store 1. 
       -- You can use current date for the rental_date column in the rental table. 
       -- Hint: Check the columns in the table rental and see what information you would need to add there. 
       -- You can query those pieces of information. For eg., you would notice that you need customer_id information as well. 
       -- To get that you can use the following query:
                   -- select customer_id from sakila.customer
                   -- where first_name = 'CHARLOTTE' and last_name = 'HUNTER';
	   -- Use similar method to get inventory_id, film_id, and staff_id.

INSERT INTO sakila.rental (rental_id, rental_date, inventory_id, customer_id, return_date, staff_id, last_update)
VALUES
(16050, '2021-11-01 16:07:32', 4582, 130, '2021-11-11 16:07:32', 1, '2021-11-11 16:07:32');
select * from sakila.staff;