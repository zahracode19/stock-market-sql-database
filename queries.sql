---------------------------------------------------
-- STOCK MARKET DATABASE - ALL QUERIES
-- Author: Al Zahra Rahman
-- Database: stock_Market (PostgreSQL)
---------------------------------------------------

-- QUERY 1: Highest closing price 
SELECT * FROM public.prices
WHERE price_date = '2026-08-07'
ORDER BY close_price DESC
LIMIT 1;

-- QUERY 2: Highest trading volume 
SELECT * FROM public.prices
WHERE price_date = '2026-08-05'
ORDER BY volume DESC
LIMIT 1;

-- QUERY 3: Average closing price per company (rounded)
SELECT ticker,
ROUND(AVG(close_price), 2) AS average_price
FROM public.prices
GROUP BY ticker
ORDER BY average_price DESC;

-- QUERY 4: JOIN - Company names with average prices
SELECT s.company_name, s.sector,
ROUND(AVG(p.close_price), 2) AS avg_close
FROM prices p
INNER JOIN stocks s ON p.ticker = s.ticker
GROUP BY s.company_name, s.sector
ORDER BY avg_close DESC;

-- QUERY 5: Sector performance analysis
SELECT s.sector,
ROUND(AVG(p.close_price), 2) AS avg_price,
COUNT(DISTINCT p.ticker) AS num_stocks
FROM prices p
INNER JOIN stocks s ON p.ticker = s.ticker
GROUP BY s.sector
ORDER BY avg_price DESC;

-- QUERY 6: Bearish days (close lower than open)
SELECT ticker, price_date,
open_price, close_price,
ROUND(((close_price - open_price)
/ open_price * 100), 2) AS change_pct
FROM prices
WHERE close_price < open_price
ORDER BY change_pct ASC;

-- QUERY 7: Top 5 best performing single days
SELECT ticker, price_date,
ROUND(((close_price - open_price)
/ open_price * 100), 2) AS daily_return
FROM prices
ORDER BY daily_return DESC
LIMIT 5;

-- QUERY 8: Volume analysis by sector
SELECT s.sector,
SUM(p.volume) AS total_volume,
ROUND(AVG(p.volume), 0) AS avg_volume
FROM prices p
INNER JOIN stocks s ON p.ticker = s.ticker
GROUP BY s.sector
ORDER BY total_volume DESC;

-- QUERY 9: Price range volatility per company
SELECT s.company_name,
MAX(p.close_price) AS highest,
MIN(p.close_price) AS lowest,
ROUND(MAX(p.close_price)
- MIN(p.close_price), 2) AS price_range
FROM prices p
INNER JOIN stocks s ON p.ticker = s.ticker
GROUP BY s.company_name
ORDER BY price_range DESC;