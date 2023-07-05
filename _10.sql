1)Using the INGREDIENT and MEAL tables, write a query to return the name of all meals that contain garlic.

SELECT DISTINCT M.MEAL_NAME
FROM MEAL M
JOIN INGREDIENT I ON M.MEAL_ID = I.MEAL_ID
WHERE I.NAME = 'Garlic';

2)Using the INGREDIENT and MEAL tables, write a query to return the number of meals with vegetarian ingredients.

SELECT COUNT(DISTINCT M.MEAL_ID) AS NUMBER_OF_MEALS
FROM MEAL M
JOIN INGREDIENT I ON M.MEAL_ID = I.MEAL_ID
WHERE I.VEGETARIAN = TRUE;

3)Using the INGREDIENT and MEAL tables, write a query to return the names of meals that have at least 1 gluten free
ingredient and at least 1 vegan ingredient.

SELECT M.NAME
FROM MEAL M
JOIN INGREDIENT I ON M.MEAL_ID = I.MEAL_ID
GROUP BY M.NAME
HAVING MAX(CASE WHEN I.GLUTEN_FREE = TRUE THEN 1 ELSE 0 END) = 1
AND MAX(CASE WHEN I.VEGAN = TRUE THEN 1 ELSE 0 END) = 1;

4)Using the INGREDIENT and MEAL tables, write a query to return the average number of ingredients per meal.

SELECT AVG(NUM_INGREDIENTS) AS AVERAGE_INGREDIENTS_FOR_MEAL
 FROM (
     SELECT M.MEAL_ID, COUNT(I.INGREDIENT_ID) AS NUM_INGREDIENT
     FROM MEAL M
     JOIN INGREDIENT I ON M.MEAL_ID = I.MEAL_ID
     GROUP BY M.MEAL_ID
 ) AS INGREDIENT_COUNT;

5)Using the INGREDIENT and MEAL tables, write a query to return the names of meals that have more than 3 ingredients.

SELECT M.NAME
FROM MEAL M
JOIN INGREDIENT I ON M.MEAL_ID = I.MEAL_ID
GROUP BY M.NAME
HAVING COUNT(*) > 3;

--We do not have data for the tables below, please just write the SQL you'd need to make the following joins!

6)Using the following table definitions, write an inner join for the two tables

CREATE TABLE CUSTOMER (
    CUSTOMER_ID INT,
    NAME VARCHAR(255),
    ADDRESS VARCHAR(255)
);
CREATE TABLE ORDER (
    ORDER_ID INT,
    CUSTOMER_ID INT,
    ORDER_DATE DATE,
    TOTAL_COST DECIMAL(10,2)
);

SELECT *
FROM CUSTOMER C
INNER JOIN "ORDER" O ON C.CUSTOMER_ID = O.CUSTOMER_ID;

7)Using the following table definitions, write an inner join for the two tables

CREATE TABLE PRODUCT (
    PRODUCT_ID INT,
    NAME VARCHAR(255),
    PRICE DECIMAL(10,2)
);
CREATE TABLE INVENTORY (
    PRODUCT_ID INT,
    STORE_ID INT,
    QUANTITY INT
);

SELECT *
FROM PRODUCT P
INNER JOIN INVENTORY I ON P.PRODUCT_ID = I.PRODUCT_ID;