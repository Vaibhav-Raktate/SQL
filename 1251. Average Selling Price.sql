SELECT p.product_id , 
ifnull(round (sum(p.price * s.units) / sum(s.units) , 2) , 0) as average_price
FROM Prices p
LEFT JOIN UnitsSold s
ON p.product_id = s.product_id 
AND s.purchase_date between p.start_date and p.end_date
GROUP BY p.product_id ;
