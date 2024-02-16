/*
 * Use a JOIN to order the countries by most profitable,
 * where the profit is the total amount that all customers from that country have payed.
 * Use tables payment, rental, customer, address, city, and country.
 * Order by country alphabetically.
 */

SELECT country, sum(amount) AS profit
FROM country
JOIN city using (country_id)
JOIN address using (city_id)
JOIN customer using (address_id)
JOIN rental using (customer_id)
JOIN payment using (rental_id)
GROUP BY country
ORDER BY country;
