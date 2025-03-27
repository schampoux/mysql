SELECT p.product_id, p.product_name  
FROM Product AS p  
JOIN Sales AS s ON p.product_id = s.product_id 
WHERE NOT EXISTS (      
    SELECT 1
    FROM Sales AS s2     
    WHERE s2.product_id = p.product_id     
    AND s2.sale_date NOT BETWEEN '2019-01-01' AND '2019-03-31' 
)
AND s.sale_date BETWEEN '2019-01-01' AND '2019-03-31' GROUP BY p.product_id, p.product_name;
