/*
 * Use a JOIN to display the first and last names, as well as the address, of each staff member.
 * Use the tables staff and address.
 * Order by last name.
 */
SELECT s.first_name, s.last_name, a.address as street_address
from staff s
LEFT JOIN address a on a.address_id = s.address_id
ORDER BY s.last_name;
