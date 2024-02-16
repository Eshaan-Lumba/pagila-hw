/*
 * Use a JOIN to display the total amount rung up by each staff member in January of 2020.
 * Use tables staff and payment.
 */

select first_name, last_name, sum(amount) from staff join payment using (staff_id) WHERE payment_date >= '2020-01-01' AND payment_date < '2020-02-01' GROUP BY first_name, last_name;
