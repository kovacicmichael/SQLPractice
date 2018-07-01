SELECT userId, AVG(duration) FROM sessions GROUP BY userId HAVING COUNT(userId)>1;


SELECT MAX(TotalSalesPrice), TranID FROM tsalesorders;


SELECT TotalSalesPrice, TranID FROM tsalesorders WHERE TotalSalesPrice > 50;

SELECT tsalesorders.SOKey FROM tsalesorders
INNER JOIN tcustomers
ON tcustomers.CustomerKey = tsalesorders.CustomerKey
WHERE tcustomers.FirstName = 'Floyd' AND LastName = 'Mayweather';

SELECT titems.ItemID FROM titems
INNER JOIN tsalesorderlines
 ON titems.ItemID = tsalesorderlines.ItemKey
INNER JOIN tsalesorders
 ON tsalesorderlines.SOKey = tsalesorders.SOKey
WHERE tsalesorders.TranID = 000000002;