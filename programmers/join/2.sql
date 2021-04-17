SELECT I.ANIMAL_ID, I.NAME
FROM ANIMAL_INS I
    LEFT OUTER JOIN ANIMAL_OUTS O USING(ANIMAL_ID)
WHERE I.DATETIME > O.DATETIME
ORDER BY I.DATETIME;
