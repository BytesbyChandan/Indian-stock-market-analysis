create database stock_analysis;
use stock_analysis;

CREATE TABLE stock_market (
    date DATE,
    ticker VARCHAR(20),
    company VARCHAR(100),
    sector VARCHAR(50),
    open DECIMAL(12,2),
    high DECIMAL(12,2),
    low DECIMAL(12,2),
    close DECIMAL(12,2),
    adj_close DECIMAL(12,2),
    volume BIGINT,
    daily_return_pct DECIMAL(10,3),
    market_value_traded DECIMAL(20,2)
);

desc stock_market;
-- Total companies in the list
Select count(distinct ticker) as Total_companies from stock_market;

-- What Sectors are present
Select distinct(sector) as All_Sector from stock_market;

-- What is the Date Range
Select min(date) as Start_date, max(date) as Max_date from stock_market;

-- How many records does each company have
Select ticker, company, count(*) as total_record
from stock_market
group by company,ticker;

-- Average closing price of each stock
Select ticker, round(avg(close),2) as Avg_closing_price
from stock_market
group by ticker;

-- Highest closing price for each stock
Select ticker, round(max(close),2) as Highest_closing_price
from stock_market
group by ticker;

-- Lowest closing price for each stock
Select ticker, round(min(close),2) as Highest_closing_price
from stock_market
group by ticker;

-- Stock with the highest single day gain
Select date,ticker, open, high, round(daily_return_pct,2) as 'Gain_per_day'
from stock_market
order by Gain_per_day desc
limit 10;

-- Stock with the biggest single day lose
Select date, ticker, open, high, round(daily_return_pct,2) as 'Gain_per_day'
from stock_market
order by Gain_per_day asc
limit 10; 

-- which stock have the highest trading volume
Select  company ,ticker, sum(volume) as highest_trading_volume
from stock_market
group by ticker, company
order by highest_trading_volume desc;

-- Averga daily trading volume
Select  company ,ticker, round(avg(volume),2) as average_trading_volume
from stock_market
group by ticker, company
order by average_trading_volume desc;

-- Highest market value traded
Select  company ,ticker, sum(market_value_traded) as high_MVT
from stock_market
group by company, ticker
order by high_MVT desc;

-- Average closing price by sector
Select sector, round(avg(close),2) as Avg_closing_price
from stock_market
group by sector
order by Avg_closing_price;

-- Average daily return by Sector
Select sector, round(avg(daily_return_pct),2) as Avg_Daily_return
from stock_market
group by sector
order by Avg_Daily_return Desc;

-- total trading volume by sector
Select sector, sum(volume) as Total_Trading_Volume
from stock_market
group by sector
order by Total_Trading_Volume DESC;

-- Number of companies in each Sector
Select sector, count(distinct company) as Number_of_companies
from stock_market
group by sector
order by Number_of_companies desc;

-- Ranking stock by Avg return
select ticker, company, round(avg(daily_return_pct),2) as Daily_avg_return,
rank() over(order by avg(daily_return_pct)) as rnk
from stock_market
group by ticker, company;

-- rank companies within each sector
Select ticker, sector, round(avg(daily_return_pct),2) as avg_return,
rank() over(partition by sector order by avg(daily_return_pct)) as rnk
from stock_market
group by ticker, sector;

-- finding previous day closing price
Select ticker, date, close, lag(close) over(partition by ticker order by date) as prev_day_close
from stock_market
group by ticker, date, close;

-- calculate price movement previous day
Select ticker, company, date, close,
lag(close) over(partition by ticker order by date) as prev_close_value,
round(close - lag(close) over(partition by ticker order by date), 2) as movement_price
from stock_market; 

-- stocks whose avg_return is greater than overall avg_return
with stock_return as(
Select ticker, company, avg(daily_return_pct) as avg_return
from stock_market
group by ticker, company)

Select ticker, company, round(avg_return,2) as Greater_avg_return
from stock_return
where avg_return> (Select avg(daily_return_pct) from stock_market)
order by avg_return desc; 

-- view for final analysis
create view stock_performance as
Select ticker, company, sector,
round(avg(close), 2) AS avg_close,
max(close) AS highest_close,
min(close) AS lowest_close,
round(avg(daily_return_pct), 2) AS avg_return,
sum(volume) AS total_volume
FROM stock_market
GROUP BY ticker, company, sector;

Select * from stock_performance
order by avg_return desc;








 


 


