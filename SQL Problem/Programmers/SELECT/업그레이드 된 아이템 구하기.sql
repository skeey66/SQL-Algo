SELECT
    a.ITEM_ID, a.ITEM_NAME, a.RARITY
FROM
    ITEM_INFO AS a
INNER JOIN
    ITEM_TREE AS b
ON 
    a.ITEM_ID=b.ITEM_ID
WHERE
    b.PARENT_ITEM_ID IN (
        SELECT
            ITEM_ID
        FROM
            ITEM_INFO
        WHERE
            RARITY='RARE'
    )
ORDER BY
    a.ITEM_ID DESC

## 서브 쿼리 문제 
## 문제 이해만 하면 쉬움