/*
 * Find all last names of actors whose last names contain the letters LI (case insensitive).
 * Order results alphabetically.
 */
select last_name from actor WHERE UPPER(last_name) LIKE UPPER('%LI%') ORDER BY last_name ;

