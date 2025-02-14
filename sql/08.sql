/*
 * Use a JOIN to display the first and last names, as well as the address, of each staff member.
 * Use the tables staff and address.
 * Order by last name.
 */

select first_name, last_name, address AS "street_address" from staff join address using (address_id) ORDER BY last_name;
