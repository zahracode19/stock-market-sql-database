# stock-market-sql-database
Relational financial database built in PostgreSQL storing real market data for 10 major companies with complex analytical SQL queries

# Stock Market Financial Database

## Overview
A relational financial database built in PostgreSQL 
storing real market data for 10 major global companies 
including Apple, Goldman Sachs, JPMorgan, and Tesla.

## Database Schema
**stocks table:** company name, ticker, sector
**prices table:** daily open, close, high, low, volume

## Key Queries Included
- Average closing price per company (AVG + GROUP BY)
- Sector performance analysis (JOIN + GROUP BY)
- Bearish day identification (WHERE + calculated columns)
- Best and worst single trading days (ORDER BY + LIMIT)
- Volume analysis by sector (SUM + JOIN)
- Price range volatility ranking (MAX - MIN + JOIN)

## Key Finding
Goldman Sachs (GS) recorded the highest price range 
volatility ($27.80) across the analysis period, while 
Apple (AAPL) recorded the highest single-day volume 
at 449,438,800 shares on August 5, 2026.

## Tools Used
- PostgreSQL 18
- pgAdmin 4
- Yahoo Finance (data source)

## How to Run
1. Install PostgreSQL
2. Run create_tables.sql to set up the database
3. Run insert_data.sql to populate with data
4. Run queries.sql to see all analyses
