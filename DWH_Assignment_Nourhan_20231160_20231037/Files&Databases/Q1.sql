create database airqualitydb;
use airqualitydb;

create table air_quality_Q1 (
    sensor_id varchar(50),
    city varchar(100),
    timestamp datetime,
    pm25 float,
    pm10 float,
    source varchar(50)
);

-- test (Run this AFTER running SSIS)
select * from air_quality_Q1;

-- reset (Run BEFORE rerunning SSIS to clean the table)
truncate table air_quality_Q1;