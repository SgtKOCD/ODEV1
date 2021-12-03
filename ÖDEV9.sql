select city,country from country
inner join city on country.country_id = city.country_id;

------------------------------------------------------------------

select payment_id, first_name, last_name from customer
inner join payment on customer.customer_id = payment.customer_id;

-------------------------------------------------------------------

select rental_id, first_name, last_name from rental
inner join customer on rental.customer_id = customer.customer_id;