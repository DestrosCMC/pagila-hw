/*
 * Use a JOIN to display the total amount rung up by each staff member in January of 2020.
 * Use tables staff and payment.
 */
SELECT s.first_name, s.last_name, sum(p.amount) as sum
FROM staff s
LEFT JOIN payment p on p.staff_id = s.staff_id
WHERE p.payment_date >='2020-01-01' AND p.payment_date <'2020-02-01'
GROUP BY s.first_name, s.last_name
ORDER BY SUM;
