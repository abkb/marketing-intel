-- select the database t
use sql_store ;

-- select data from the database table 
select  
first_name, 
last_name, 
points, 
(points + 10) *100 as 'discount factor'   

from customers; -- from customer table 

-- distict element selection 
select distinct state 
from customers ;

-- Test1 SELECT clause 
select 
name, unit_price, unit_price* 1.1 as 'new price'
from products;

-- WHERE clause
-- ex1
select *
from customers 
where points > 3000; -- signs: > , >= , < , <= , = , !=, <> 

-- ex2
select *
from customers 
where state= 'va';  

-- ex3
select *
from customers 
where state <> 'va' ;
-- ex4
select*
from customers 
where birth_date < '1990-01-01';

-- Test2 WHERE clause
select *
from orders 
where order_date >= '2019-01-01';

-- combine multiple search condition to fileter data 
-- ex1 with AND 
select*
from customers 
where birth_date < '1990-01-01' and points> 1000;

-- ex2 with OR 
select*
from customers 
where birth_date < '1990-01-01' or points> 1000;

-- ex3 combine both conditions OR , AND  
select*
from customers 
where birth_date < '1990-01-01' or 
(points> 1000 and state='va');  -- AND operator is always evalueted first.

-- ex4. using NOT to negate condition not esy to read 
select*
from customers 
where not (birth_date > '1990-01-01' or points > 1000);

-- ex5 same result with ex4 but more easy read 
select*
from customers 
where birth_date <= '1990-01-01' and points <= 1000;

-- Test3 combined conditions 
select *
from order_items
where order_id= 6 and unit_price* quantity >30;

-- ex6 select the cusomers based on the states 
select*
from customers 
where state= 'va' or state= 'ga' or state= 'fl';

-- ex7 exactly same result of ex6 with IN condition 
select*
from customers 
where state in ('va' , 'fl', 'ga');

-- ex8 with NOT IN condition for outside the state 
select*
from customers 
where state not in ('va' , 'fl', 'ga');

-- Test4 
select*
from products
where quantity_in_stock in (38, 49, 72);

-- BTWEEN clause 
-- 1st process 
select * 
from customers 
where points >=1000 and points<=3000;
-- 2nd proces 
select *
from customers 
where points between 1000 and 3000; 

-- Test 5 with BETWEEN clause 
select *
from customers 
where birth_date between '1990-01-01' and '2000-01-01';

-- ex9 select customer based on the specific name latter/s with LIKE operator 
select *
from customers 
where last_name like 'b%'; -- starts with 'b' '%' means any character after b

-- ex10 select customer based on the specific name latter/s
select *
from customers 
where last_name like 'b%'; -- starts with 'b' '%' means any character after b

-- ex9 select customer based on the specific name latter/s
select *
from customers 
where last_name like 'brush%'; -- starts with 'brush' '%' means any character after b

-- ex10 select customer based on the specific name latter/s
select *
from customers 
where last_name like '%b%'; -- anywhere 'b' '%' means any character 

-- ex111 select customer based on the specific name latter/s
select *
from customers 
where last_name like '%y'; -- ends with 'y' '%' means any character

-- ex12 select customer based on the specific name latter/s
select *
from customers 
where last_name like '_____y'; -- '_' means exactly number of char ends with 'y'

-- ex12 select customer based on the specific name latter/s
select *
from customers 
where last_name like 'b____y'; -- starts with 'b' and ends with 'y'

-- Test 

select *
from customers 
where address like '%trail%' or 
	address like '%avenue%'; 

select*
from customers 
where phone like '%9'; 

select *
from customers 
where phone not like '%9';

-- ex 13 using REGEXP instead of LIKE
-- ^as beginning of string, ad$ end,  a|d logical or, [ad] any char, [a-d] char to char 
select *
from customers 
where last_name regexp 'e' ; -- name with e in the last name 

select* 
from customers 
where last_name regexp '[gim]e'; -- have the specifica character before 'e' in the last name 

select* 
from customers 
where last_name regexp 'e[gim]' ; -- have the specifica character after 'e' in the last name 

select*
from customers 
where last_name regexp '[a-h]e' ; -- have a to h char before 'e' in the last name

-- Test 
select *
from customers 
where first_name regexp 'elka|ambur';
-- where first_name like 'Elka' or 
	-- first_name like 'Ambur';
    
select *
from customers 
-- where last_name like '%ey' or last_name like '%on'
where last_name regexp 'ey$|on$' ;

select *
from customers 
where last_name regexp '^my|se';

select *
from customers 
where last_name regexp 'b[r|u]'










