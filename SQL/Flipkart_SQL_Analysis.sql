create database Flipkart_analysis;
use Flipkart_analysis;

show tables;

SELECT COUNT(*) AS total_products
FROM `flipkart products`;

rename table `flipkart products` to flipkart_products;

show tables;

select * from flipkart_products;

select count(*) as total_products from flipkart_products;

show tables;


SELECT
    main_category_new,
    COUNT(*) AS product_count
FROM flipkart_products
GROUP BY main_category_new
ORDER BY product_count DESC;


SELECT
    main_category_new,
    ROUND(AVG(discounted_price),2) AS avg_price
FROM flipkart_products
GROUP BY main_category_new
ORDER BY avg_price DESC;


select 
main_category_new,
round(avg(discount_percentage),2) as avg_discount
from flipkart_products
group by main_category_new
order by avg_discount desc;


