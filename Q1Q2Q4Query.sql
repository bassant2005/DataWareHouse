create database [AirQualityDB]
use [AirQualityDB]

CREATE TABLE air_quality_clean (
    sensor_id VARCHAR(50),
    city VARCHAR(100),
    timestamp DATETIME,
    pm25 FLOAT,
    pm10 FLOAT,
    source VARCHAR(50)
);
select * from [dbo].[air_quality_Q1]
delete from [dbo].[air_quality_Q1]

create table Campaign_Q2 (
    ID int,
    Name varchar(100),
    Budget decimal(10,2),
    Update_Date date
)

insert into Campaign_Q2 values
(1001, 'Summer Ads', 10000, '2026-01-01'),
(1002, 'Winter Ads', 15000, '2026-01-01'),
(1003, 'Spring Ads', 20000, '2026-01-01')

create table Campaign_Q2_Target (
    SurrogateKey   int identity(1,1) primary key,
    ID int,
    Name varchar(100),
    Budget decimal(10,2),
    Current_Name varchar(100),
    Current_Budget decimal(10,2),
    Start_Date date,
    End_Date date,
    Is_Current int,
    Update_Date date
)

create table raw_trades (
    Trader_ID int,
    Trade_TS datetime,
    Action varchar(10),
    Quantity int
)

set dateformat dmy

insert into raw_trades values 
(501,'27/3/2026  9:00:00','BUY',100),
(501,'27/3/2026  9:00:00','buy',100),
(501,'27/3/2026  9:05:00','sell',50),
(501,'27/3/2026  9:10:00','buy',-30),
(502,'27/3/2026  9:00:00','sell',70),
(502,'27/3/2026  9:02:00','buy',50),
(502,'27/3/2026  9:03:00','sell',20),
(503,'27/3/2026  9:10:00','buy',200),
(503,'27/3/2026  9:20:00','sell',100),
(503,'27/3/2026  9:25:00','sell',150),
(504,'27/3/2026  9:00:00','buy',80),
(504,'27/3/2026  9:01:00','BUY',20),
(504,'27/3/2026  9:02:00','sell',50),
(505,'27/3/2026  9:00:00','sell',60),
(505,'27/3/2026  9:05:00','buy',40),
(506,'27/3/2026  9:10:00','buy',70),
(506,'27/3/2026  9:15:00','sell',70),
(506,'27/3/2026  9:15:00','buy',-70),
(507,'27/3/2026  9:20:00','buy',90),
(507,'27/3/2026  9:25:00','sell',100),
(508,'27/3/2026  9:30:00','buy',200),
(508,'27/3/2026  9:35:00','buy',50),
(508,'27/3/2026  9:40:00','sell',150),
(508,'27/3/2026  9:45:00','SELL',-50),
(508,'27/3/2026  9:50:00','buy',-30)

create table Trader_Summary (
    Att_Key int identity(1,1) primary key,
    Trader_ID int,
    Trade_Date date,
    Total_Buy int,
    Total_Sell int
)

select * from [dbo].[Campaign_Q2]
select * from [dbo].[Campaign_Q2_Target]
select * from [dbo].[raw_trades]
select * from [dbo].[Trader_Summary]

delete from [dbo].[Campaign_Q2_Target]
delete from [dbo].[Trader_Summary]

-- ???? ????? ???? ??? 2 ??? ???? ??? ?????? ????? ??????? ?????? ????? ????? ????? ??? ?? ?????
-- test Q2: ???? budget
update Campaign_Q2
set Budget = 12000, Update_Date = '2026-02-01'
where ID = 1001

-- ????? ???? ??????? ???? ??????
select * from [dbo].[Campaign_Q2]
select * from [dbo].[Campaign_Q2_Target]