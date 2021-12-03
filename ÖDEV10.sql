select city, country from city
left join country on city.country_id = country.country_id;

------ Tüm şehirlerin ülkeleri eşleştirildiği için null değer yok ------

select payment_id, first_name, last_name from payment
right join customer on payment.customer_id = customer.customer_id;

-------Tüm müşterilerin payment_id' si var -----------------

select rental_id, first_name, last_name from rental
full join customer on rental.customer_id = customer.customer_id;