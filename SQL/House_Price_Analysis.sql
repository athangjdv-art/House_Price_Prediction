CREATE DATABASE house_price_project;
use house_price_project;
select count(*) as total_records from house_sales;


-- Q1: Area-wise House Price Analysis
SELECT
    zipcode,
    COUNT(*) AS total_houses,
    ROUND(AVG(price), 2) AS average_price,
    MIN(price) AS minimum_price,
    MAX(price) AS maximum_price
FROM house_sales
GROUP BY zipcode
ORDER BY average_price DESC;


-- Q2: Property Feature Comparison
SELECT
    bedrooms,
    bathrooms,
    grade,
    COUNT(*) AS total_houses,
    ROUND(AVG(sqft_living), 2) AS average_living_area,
    ROUND(AVG(price), 2) AS average_price
FROM house_sales
GROUP BY bedrooms, bathrooms, grade
ORDER BY average_price DESC;


-- Q3: Market Trend Analysis
SELECT
    YEAR(`date`) AS sale_year,
    COUNT(*) AS total_sales,
    ROUND(AVG(price), 2) AS average_price,
    MIN(price) AS minimum_price,
    MAX(price) AS maximum_price
FROM house_sales
GROUP BY YEAR(`date`)
ORDER BY sale_year;


-- Question 4: Which are the top 10 most expensive houses?
SELECT
    id,
    price,
    bedrooms,
    bathrooms,
    sqft_living,
    zipcode,
    grade
FROM house_sales
ORDER BY price DESC
LIMIT 10;

-- Q5:Which ZIP codes have the most property sales?
SELECT
    zipcode,
    COUNT(*) AS total_sales,
    ROUND(AVG(price), 2) AS average_price
FROM house_sales
GROUP BY zipcode
ORDER BY total_sales DESC
LIMIT 10;


-- Q6: How does house condition affect average price?
SELECT
    `condition`,
    COUNT(*) AS total_houses,
    ROUND(AVG(price), 2) AS average_price,
    ROUND(AVG(sqft_living), 2) AS average_living_area
FROM house_sales
GROUP BY `condition`
ORDER BY `condition`;



-- Q7:How does construction quality affect house prices?
SELECT
    grade,
    COUNT(*) AS total_houses,
    ROUND(AVG(price), 2) AS average_price,
    MIN(price) AS minimum_price,
    MAX(price) AS maximum_price
FROM house_sales
GROUP BY grade
ORDER BY grade;


-- Q8: Do renovated houses have higher average prices?
SELECT
    CASE
        WHEN yr_renovated > 0 THEN 'Renovated'
        ELSE 'Not Renovated'
    END AS renovation_status,
    COUNT(*) AS total_houses,
    ROUND(AVG(price), 2) AS average_price,
    ROUND(AVG(sqft_living), 2) AS average_living_area
FROM house_sales
GROUP BY renovation_status;


-- Q9: What is the average price per square foot by ZIP code?
SELECT
    zipcode,
    COUNT(*) AS total_houses,
    ROUND(AVG(price / NULLIF(sqft_living, 0)), 2)
        AS average_price_per_sqft
FROM house_sales
GROUP BY zipcode
ORDER BY average_price_per_sqft DESC;


-- Q10:How does waterfront access relate to house prices?
SELECT
    CASE
        WHEN waterfront = 1 THEN 'Waterfront'
        ELSE 'Non-Waterfront'
    END AS waterfront_status,
    COUNT(*) AS total_houses,
    ROUND(AVG(price), 2) AS average_price,
    ROUND(AVG(sqft_living), 2) AS average_living_area
FROM house_sales
GROUP BY waterfront_status;



