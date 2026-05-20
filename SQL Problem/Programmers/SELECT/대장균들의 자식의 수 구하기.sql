SELECT
    a.ID, (SELECT COUNT(*) 
            FROM ECOLI_DATA AS b
            WHERE a.ID=b.PARENT_ID)
FROM
    ECOLI_DATA AS a
ORDER BY
    a.ID