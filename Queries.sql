-- SQL statements
USE `eCommcerce`;
-- 1. Avg Traffic for sales < 100

SELECT avg(`traffic`) as AVGTraffic
FROM `onlineMkt` as o, `basicKeyFigures` as b
WHERE o.orderNo = b.orderNo AND sales > 100;

-- 2. How many tickets do we had on day 2020-01-02
SELECT count(`ticketID`) as NumberOfTickets, `Timedate`
FROM `customer` as c, `onlineMkt` as o
WHERE c.transactionNo = o.transactionNo AND `Timedate` > '2020-01-01 23:59:59';

-- 3. What is the avg conversion rate if the availability is lower then 30%

SELECT avg(`cr`) as AverageConversionRate
FROM `internalProcess` as i, `basicKeyFigures` as b, `onlineMkt` as o
WHERE i.productNo = b.productNo AND b.orderNo = o.orderNo AND i.availability < 30;




