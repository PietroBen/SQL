Comands:
CREATE TABLE MEAL (
  NAME VARCHAR(255),
  PRICE DOUBLE,
  CALORIES INT
);

CREATE TABLE INGREDIENT (
  NAME VARCHAR(255),
  CONTAINS_LACTOSE BOOLEAN,
  VEGETARIAN BOOLEAN,
  VEGAN BOOLEAN,
  GLUTEN_FREE BOOLEAN
);

INSERT INTO INGREDIENT (NAME, CONTAINS_LACTOSE, VEGETARIAN, VEGAN, GLUTEN_FREE)
VALUES ('Eggs', false, true, false, true);

INSERT INTO INGREDIENT (NAME, CONTAINS_LACTOSE, VEGETARIAN, VEGAN, GLUTEN_FREE)
VALUES ('Bread', false, true, true, false);

INSERT INTO INGREDIENT (NAME, CONTAINS_LACTOSE, VEGETARIAN, VEGAN, GLUTEN_FREE)
VALUES ('Beef Patty', false, false, false, true);

INSERT INTO INGREDIENT (NAME, CONTAINS_LACTOSE, VEGETARIAN, VEGAN, GLUTEN_FREE)
VALUES ('Lettuce', false, true, true, true);

INSERT INTO INGREDIENT (NAME, CONTAINS_LACTOSE, VEGETARIAN, VEGAN, GLUTEN_FREE)
VALUES ('Yoghurt', true, true, false, true);

INSERT INTO MEAL(NAME, PRICE, CALORIES)
VALUES ('Spaghetti Bolognese', 12.99, 600),
('Grilled Chicken Sandwich', 8.99, 400),
('Pesto Pasta', 10.99, 550),
('Steak and Mash', 19.99, 800),
('Sushi Platter', 15.99, 700);

CREATE TABLE MEAL_ORDER (
  TIME_MEAL_ORDERED TIMESTAMP DEFAULT NOW(),
  MEAL_NAME VARCHAR(255)
);

    INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME)
    VALUES (NOW(), 'Spaghetti Bolognese');

    INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME)
    VALUES (DATE_ADD(NOW(), INTERVAL 1 HOUR), 'Grilled Chicken Sandwich');

    INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME)
    VALUES (DATE_ADD(NOW(), INTERVAL 2 HOUR), 'Pesto Pasta');

    INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME)
    VALUES (DATE_ADD(NOW(), INTERVAL 3 HOUR), 'Pesto Pasta');

    INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME)
    VALUES (DATE_ADD(NOW(), INTERVAL 4 HOUR), 'Grilled Chicken Sandwich');

    INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME)
    VALUES (DATE_ADD(NOW(), INTERVAL 5 HOUR), 'Pesto Pasta');

    INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME)
    VALUES (DATE_ADD(NOW(), INTERVAL 6 HOUR), 'Spaghetti Bolognese');

    INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME)
    VALUES (DATE_ADD(NOW(), INTERVAL 7 HOUR), 'Pesta Pasta');

    INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME)
    VALUES (DATE_ADD(NOW(), INTERVAL 8 HOUR), 'Pesto Pasta');

    INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME)
    VALUES (DATE_ADD(NOW(), INTERVAL 9 HOUR), 'Spaghetti Bolognese');

CREATE VIEW MEAL_ORDER_WITH_DETAILS AS
    SELECT MO.*, M.PRICE, M.CALORIES FROM MEAL_ORDER MO, MEAL M
    WHERE MO.MEAL_NAME = M.NAME;

    INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME)
VALUES (NOW(), 'Spaghetti Bolognese'),
(DATE_ADD(NOW(), INTERVAL 1 HOUR), 'Grilled Chicken Sandwich'),
(DATE_ADD(NOW(), INTERVAL 2 HOUR), 'Pesto Pasta'), (DATE_ADD(NOW(), INTERVAL 3 HOUR), 'Steak and Mash'), (DATE_ADD(NOW(), INTERVAL 4 HOUR), 'Spaghetti Bolognese'),
(DATE_ADD(NOW(), INTERVAL 5 HOUR), 'Sushi Platter'), (DATE_ADD(NOW(), INTERVAL 6 HOUR), 'Pesto Pasta'), (DATE_ADD(NOW(), INTERVAL 7 HOUR), 'Spaghetti Bolognese'), (DATE_ADD(NOW(), INTERVAL 8 HOUR), 'Steak and Mash'), (DATE_ADD(NOW(), INTERVAL 9 HOUR), 'Grilled Chicken Sandwich'),
(DATE_ADD(NOW(), INTERVAL 10 HOUR), 'Spaghetti Bolognese'), (DATE_ADD(NOW(), INTERVAL 11 HOUR), 'Pesto Pasta'), (DATE_ADD(NOW(), INTERVAL 12 HOUR), 'Sushi Platter'), (DATE_ADD(NOW(), INTERVAL 13 HOUR), 'Spaghetti Bolognese'), (DATE_ADD(NOW(), INTERVAL 14 HOUR), 'Steak and Mash'),
(DATE_ADD(NOW(), INTERVAL 15 HOUR), 'Grilled Chicken Sandwich'), (DATE_ADD(NOW(), INTERVAL 16 HOUR), 'Sushi Platter'), (DATE_ADD(NOW(), INTERVAL 17 HOUR), 'Steak and Mash'), (DATE_ADD(NOW(), INTERVAL 18 HOUR), 'Spaghetti Bolognese'), (DATE_ADD(NOW(), INTERVAL 19 HOUR), 'Grilled Chicken Sandwich'),
(DATE_ADD(NOW(), INTERVAL 20 HOUR), 'Pesto Pasta'), (DATE_ADD(NOW(), INTERVAL 21 HOUR), 'Sushi Platter'), (DATE_ADD(NOW(), INTERVAL 22 HOUR), 'Steak and Mash');

Esercizi:
1)Write a query to find the maximum price of a meal with more than 500 calories.
2)Write a query to find the average calories of meals that cost more than 15 EUR
3)Write a query to select all meals that have the MAX price, using HAVING and MAX()
4)Write a query to select all meals that have a price lower than the average price, using HAVING and AVG
5)Write a query to select all meals that have a price lower than the average price and have more than 600 calories

1)SELECT MAX(PRICE) as MAX_PRICE
  FROM MEAL_ORDER_WITH_DETAILS
  GROUP BY MEAL_NAME
  HAVING MAX(CALORIES) > 500;

2)SELECT AVG(CALORIES) AS AVG_CALORIES
  FROM MEAL_ORDER_WITH_DETAILS
  GROUP BY MEAL_NAME
  HAVING AVG(PRICE) > 15;

3)SELECT MEAL_NAME, MAX(PRICE) AS MAX_PRICE
  FROM MEAL_ORDER_WITH_DETAILS
  GROUP BY MEAL_NAME
  HAVING MAX(PRICE) = (SELECT MAX(PRICE) FROM MEAL_ORDER_WITH_DETAILS);

4)SELECT MEAL_NAME, PRICE
  FROM MEAL_ORDER_WITH_DETAILS
  GROUP BY MEAL_NAME
  HAVING PRICE < AVG(PRICE);

5)SELECT MEAL_NAME, PRICE, CALORIES
  FROM MEAL_ORDER_WITH_DETAILS
  GROUP BY MEAL_NAME
  HAVING PRICE < AVG(PRICE) AND CALORIES > 600;