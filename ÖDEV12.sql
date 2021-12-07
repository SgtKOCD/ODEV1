select count(*) 
from film 
where length >(select avg(length)from film); -- kaç tane demiş filmler hangileri dememiş 

-------------------------------------------------------------------------------------------------

select count(*) 
from film 
where rental_rate =(select max(rental_rate)from film); -- kaç tane demiş filmler hangileri dememiş 

--------------------------------------------------------------------------------------------------

select * 
from film 
where rental_rate = ANY (select min (rental_rate) from film) 
and replacement_cost = any (select min (replacement_cost) from film);

---------------------------------------------------------------------------------------------------

select customer_id, count(payment_id) from payment group by customer_id order by count desc;

-------------------------SAĞLAMASI AŞAĞIDADIR-----------------------------------------------------

select customer_id from payment where customer_id = 148  -- 45 tane 148 nolu customer_id var sağlama olumlu