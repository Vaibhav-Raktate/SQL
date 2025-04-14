select max(num) as num from
(SELECT num 
FROM MyNumbers
GROUP BY num
HAVING count(num)=1) as newtable;
