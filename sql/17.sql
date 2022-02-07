/*
 * Use a JOIN to order the countries by most profitable,
 * where the profit is the total amount that all customers from that country have payed.
 * Use tables payment, rental, customer, address, city, and country.
 * Order by country alphabetically.
 */
SELECT co.country, SUM(p.amount) AS profit
FROM payment p
INNER JOIN rental r ON r.rental_id = p.rental_id
INNER JOIN customer c ON c.customer_id = r.customer_id
INNER JOIN address a ON a.address_id = c.address_id
INNER JOIN city ci ON ci.city_id = a.city_id
INNER JOIN country co ON co.country_id = ci.country_id
GROUP BY co.country
ORDER BY co.country;
