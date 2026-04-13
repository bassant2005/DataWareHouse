create database [AirQualityDB]
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