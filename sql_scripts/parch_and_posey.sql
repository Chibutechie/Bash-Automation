-- Find order IDs where either gloss_qty or poster_qty is greater than 4000:
SELECT 
	id
FROM orders
WHERE gloss_qty > 4000 OR poster_qty > 4000;

-- List orders where standard_qty = 0 and either gloss_qty or poster_qty > 1000:
SELECT *
FROM orders
WHERE standard_qty = 0 
  AND (gloss_qty > 1000 OR poster_qty > 1000);

-- Find company names starting with 'C' or 'W', where primary contact contains 'ana' or 'Ana', but not 'eana':

SELECT name as company_name
FROM accounts
WHERE (name LIKE 'C%' OR name LIKE 'W%')
  AND (primary_poc LIKE '%ana%' OR primary_poc LIKE '%Ana%')
  AND primary_poc NOT LIKE '%eana%';

-- Table showing region, sales rep, and associated accounts, sorted by account name:

SELECT r.name, s.name, a.name
FROM region r
JOIN sales_reps s ON r.id = s.region_id
JOIN accounts a ON s.id = a.sales_rep_id
ORDER BY a.name ASC;