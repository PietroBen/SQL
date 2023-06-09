Replicate the top 5 joins found in the picture sql-joins.

In alto a sinistra:

SELECT M.NAME
FROM MEAL M
LEFT JOIN INGREDIENT I
ON M.MEAL_ID = I.MEAL_ID;

Sotto a sinistra:

SELECT M.NAME
FROM MEAL M
LEFT JOIN INGREDIENT I
ON M.MEAL_ID = I.MEAL_ID
WHERE I.MEAL_ID IS NULL;

In alto a destra:

SELECT M.NAME
FROM MEAL M
RIGHT JOIN INGREDIENT I
ON M.MEAL_ID = I.MEAL_ID;

In basso a destra:

SELECT M.NAME
FROM MEAL M
RIGHT JOIN INGREDIENT I
ON M.MEAL_ID = I.MEAL_ID;
WHERE M.MEAL_ID IS NULL;

In centro:

SELECT M.NAME
FROM MEAL M
INNER JOIN INGREDIENT I
ON M.MEAL_ID = I.MEAL_ID;

BONUS:

In fondo a sinistra:

SELECT M.NAME
FROM MEAL M
FULL OUTER JOIN INGREDIENT I
ON M.MEAL_ID = I.MEAL_ID;

In fondo a destra:

SELECT M.NAME
FROM MEAL M
FULL OUTER JOIN INGREDIENT I
ON M.MEAL_ID = I.MEAL_ID
WHERE M.MEAL_ID IS NULL
OR I.MEAL_ID IS NULL;
