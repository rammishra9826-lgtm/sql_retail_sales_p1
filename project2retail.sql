
DROP TABLE IF EXISTS retail_sales;

CREATE TABLE retail_sales(

			transactions_id	INT PRIMARY KEY,
			sale_date	DATE,
			sale_time	TIME,
			customer_id	INT 
			gender	VARCHAR(15),
			age	category INT ,
			quantiy	INT,
			price_per_unit IN
			cogs	
			total_sale
			
			);


SELECT * FROM retail_sales;			

SELECT count(*) FROM retail_sales;	


-- =>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

-- CHECKING NULL VALUES IS PRESEMT IN EACH COLUMN NOT ??


SELECT * FROM retail_sales
where transactions_id IS NULL; 


SELECT * FROM retail_sales
where sale_date IS NULL;

SELECT * FROM retail_sales
where sale_time IS NULL;


SELECT * FROM retail_sales
where customer_id IS NULL;


SELECT * FROM retail_sales
where gender IS NULL;


SELECT * FROM retail_sales
where age IS NULL; -- 10 null values in age


SELECT * FROM retail_sales
where category IS NULL;


SELECT * FROM retail_sales
where quantity IS NULL; -- 3 null values 


SELECT * FROM retail_sales
where price_per_unit IS NULL; -- 3 null values


SELECT * FROM retail_sales
where cogs IS NULL;  --3 null values


SELECT * FROM retail_sales
where total_sale IS NULL; -- 3 null values


-- OPTIMAL WAY TO CHECK NULL VALUES IN MULTIPLE COLUMN 

SELECT * FROM retail_sales
  WHERE 
   transactions_id IS NULL 
  OR
   sale_date IS NULL
  OR
   sale_time IS NULL
  OR
   customer_id IS NULL
  OR
   gender IS NULL
  OR
   age IS NULL
  OR
   category IS NULL
  OR
   quantity IS NULL
  OR
   price_per_unit IS NULL
  OR
   cogs IS NULL
  OR
   total_sale IS NULL
  ;
  
-- ->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>  
  
  
  -- DELETING ALL NULL VALUES PRESENT IN THE TABLE


  DELETE  FROM retail_sales
    WHERE 
  	  transactions_id IS NULL 
	  OR
	    sale_date IS NULL
	  OR
	   sale_time IS NULL
	  OR
	   customer_id IS NULL
	  OR
	   gender IS NULL
	  OR
	   age IS NULL
	  OR
	   category IS NULL
	  OR
	   quantity IS NULL
	  OR
	   price_per_unit IS NULL
	  OR
	   cogs IS NULL
	  OR
	   total_sale IS NULL
	  ;

-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

-- How many sales we have?
SELECT COUNT(*) FROM retail_sales AS total_sales ; 

-- How many uniuque customers we have ?
SELECT COUNT(DISTINCT(customer_id)) FROM retail_sales;

SELECT  DISTINCT category 
FROM retail_sales ;




SELECT * FROM retail_sales;


-- Data Analysis & Business Key Problems & Answers

-- Q.1 Write a SQL query to retrieve all columns for sales made on '2022-11-05

	  select *  from retail_sales
	  where sale_date='2022-11-05';
	  
	  --> here we get total 11 customers sales 
	  
	     
	  where sale_date='2022-11-05' and gender='Male' ; -- female is 5
	  select *  from retail_sales
	  where sale_date='2022-11-05' and gender='Female' ;-- male is 6


-- Q.2 Write a SQL query to retrieve all transactions where the category is 'Clothing' and the quantity sold is more than 3 in the month of Nov-2022
   select * from retail_sales
   where
   category='Clothing'
   and
   quantity>=3 
   and
   to_char(sale_date,'yyyy-mm') = '2022-11'
   ;

  -- in the month of november we have total 29 records which have category= Clothing and quantity more then 3



-- Q.3 Write a SQL query to calculate the total sales (total_sale) for each category.
       select  distinct category from retail_sales; 
	
	   select category,
	   sum(total_sale) as Net_sale,
	   count(*) as total_orders
	  from retail_sales
	  GROUP BY 1;

-- Q.4 Write a SQL query to find the average age of customers who purchased items from the 'Beauty' category.

select * from retail_sales
where category='Beauty';

select avg(age) from retail_sales
 where category ='Beauty'  ;

 -- the average age is 40 from the customers


-- Q.5 Write a SQL query to find all transactions where the total_sale is greater than 1000.
 select * from retail_sales
 where total_sale>1000; -- here we get total 306 teansations who has total sale >1000

-- Q.6 Write a SQL query to find the total number of transactions (transaction_id) made by each gender in each category.
SELECT 
       category, 
       gender,
	   count(*) as total_transactions
	   from retail_sales
	   group by
	   category,
	   gender
	   order by 1 ;




-- Q.7 Write a SQL query to calculate the average sale for each month. Find out best selling month in each year

SELECT 

-- Q.8 Write a SQL query to find the top 5 customers based on the highest total sales 
select * from retail_sales
order by total_sale desc 
limit 5;


-- Q.9 Write a SQL query to find the number of unique customers who purchased items from each category.
     

-- Q.10 Write a SQL query to create each shift and number of orders (Example Morning <=12, Afternoon Between 12 & 17, Evening >17)


  



-- 



alter table retail_sales
rename quantiy to quantity;












