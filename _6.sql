Tracce :
1)Using a SELECT statement with a GROUP BY clause and COUNT function, retrieve the number of orders for each meal.
2)Using a SELECT statement with a WHERE clause and SUM function, retrieve the total revenue for all meals that have a price greater than €15.
3)Using a SELECT statement with a GROUP BY clause and COUNT function, retrieve the number of meals that have more than 500 calories.
4)Using a SELECT statement with a WHERE clause and SUM function, retrieve the total price for all meals that have a name containing the letter 'S'.
You can find items that start with the letter s with the following where clause
WHERE LOWER(NAME) LIKE '%s%';
5)Using a SELECT statement with a WHERE clause, GROUP BY clause, and COUNT function, retrieve the number of orders for each meal that were ordered before '202X-XX-XX 18:00:00' (Replace the Xs with your current date)

Soluzioni:
1)SELECT MEAL_NAME,
  COUNT(*) AS TIMES_MEAL_ORDERED
  FROM MEAL_ORDER_WITH_DETAILS
  GROUP BY MEAL_NAME;

2)SELECT MEAL_NAME,
    SUM(PRICE) AS TOTAL_REVENUE_EUR
    FROM MEAL_ORDER_WITH_DETAILS
    WHERE PRICE > 15;

3)SELECT MEAL_NAME,
    COUNT(*) AS TIMES_MEAL_ORDERED
    FROM MEAL_ORDER_WITH_DETAILS
    WHERE CALORIES > 500
    GROUP BY CALORIES;

4)SELECT MEAL_NAME,
  SUM(PRICE) AS TOTAL_PRICE
  FROM MEAL_ORDER_WITH_DETAILS
  WHERE LOWER(MEAL_NAME) LIKE '%S%';

5)SELECT MEAL_NAME,
  COUNT(*) AS TIMES_MEAL_ORDERED
  FROM MEAL_ORDER_WITH_DETAILS
  WHERE TIME_MEAL_ORDERED < '2023-06-13 09:00:00'
  GROUP BY MEAL_NAME;