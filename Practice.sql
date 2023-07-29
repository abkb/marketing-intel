-- select the database t
use sql_store ;

-- select data from the database table 
select  
first_name, 
last_name, 
points, 
(points + 10) *100 as 'discount factor'   

from customers; -- from customer table 

select distinct state 
from customers ;

-- Exercise 1
select 
name, unit_price, unit_price* 1.1 as 'new price'
from products;