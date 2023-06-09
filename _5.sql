1) Descrivi le funzioni seguenti:
 CONCAT(COLUMN1, COLUMN2) AS ALIAS_NAME            # Concatena COLUMN1 e COLUMN2 e cambia il nome in ALIAS_NAME.
 LOWER(COLUMN)                                     # Restituisce tutti i caratteri della colonna "COLUMN" in minuscolo.
 UPPER(COLUMN)                                     # Restituisce tutti i caratteri della colonna "COLUMN" in maiuscolo.
 TRIM(COLUMN)                                      # Toglie gli spazi in eccesso nella colonna "COLUMN".
 LENGTH(COLUMN)                                    # Restituisce il numero di caratteri della colonna "COLUMN".
 SUBSTRING(COLUMN, START, LENGTH)                  # Sottrae i caratteri.
 ROUND(COLUMN, DECIMAL_PLACES)                     # Arrotonda un numero a un numero specificato di posizioni decimali.
 DATE_ADD(COLUMN, INTERVAL EXPRESSION UNIT)        # Aggiunge un intervallo di data/ora a una data e restituisce la data.
 DATE_SUB(COLUMN, INTERVAL EXPRESSION UNIT)        # Rimuove un intervallo di data/ora a una data e restituisce la data.
 FORMAT(COLUMN, FORMAT_STRING)                     # Formatta un valore con il formato specificato.

 2) Using DATE_ADD or DATE_SUB and the following SQL

    Select your birthday by passing the result into the next item.

 ---------> Query:
       SELECT
           DATE_SUB(DATE_ADD(DATE_ADD(DATE_ADD(DATE_ADD(NOW(),
                                                        INTERVAL 13 MINUTE),
                                               INTERVAL 7 HOUR),
                                      INTERVAL 23 DAY),
                             INTERVAL 10 MONTH),
                    INTERVAL 29 YEAR) as BIRTHDAY_DATE
           FROM MEAL_ORDER_WITH_DETAILS;

