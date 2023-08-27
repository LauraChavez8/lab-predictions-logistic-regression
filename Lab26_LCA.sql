USE sakila;

SELECT film_id, release_year, language_id, rental_duration, rental_rate, length, rating, special_features FROM film;

SELECT i.inventory_id, i.film_id, r.rental_id, r.rental_date FROM inventory i
JOIN rental r ON i.inventory_id = r.inventory_id;

-----
SELECT DISTINCT f.film_id FROM film f
LEFT JOIN inventory i USING (film_id)
LEFT JOIN rental r USING (inventory_id)
WHERE r.rental_date > '2006-01-15'
ORDER BY f.film_id;