--  Count total transactions
SELECT COUNT(*) FROM banking_data;

--  Preview first 10 rows
SELECT * FROM banking_data LIMIT 10;

--  List all transaction types
SELECT DISTINCT type FROM banking_data;

--  Count unique receiver accounts
SELECT COUNT(DISTINCT nameDest) AS unique_receivers FROM banking_data;
--  Top 10 receivers by total amount received
SELECT nameDest, SUM(amount) AS total_received
FROM banking_data
GROUP BY nameDest
ORDER BY total_received DESC
LIMIT 10;

--  Transactions over ₹1,000,000
SELECT * FROM banking_data
WHERE amount > 1000000
ORDER BY amount DESC;

--  Accounts sending money to themselves
SELECT * FROM banking_data
WHERE nameOrig = nameDest;



-- Total and average amount per transaction type
SELECT typee,
       COUNT(*) AS total_txns,
       SUM(amount) AS total_amount,
       AVG(amount) AS avg_amount
FROM banking_data
GROUP BY typee
ORDER BY total_amount DESC;
