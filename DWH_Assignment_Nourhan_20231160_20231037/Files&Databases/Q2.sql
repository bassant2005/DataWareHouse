create table Campaign_Q2 (
    ID int,
    Name varchar(100),
    Budget decimal(10,2),
    Update_Date date
);

create table Campaign_Q2_Target (
    SurrogateKey int identity(1,1) primary key,
    ID int,
    Name varchar(100),
    Budget decimal(10,2),
    Current_Name varchar(100),
    Current_Budget decimal(10,2),
    Start_Date date,
    End_Date date,
    Is_Current char(1)
);

create table Watermark (
    TableName varchar(100),
    Last_Load date
);

-- setup data
truncate table Campaign_Q2;
truncate table Campaign_Q2_Target;
truncate table Watermark;

insert into Watermark values ('Campaign_Q2', '2000-01-01');

insert into Campaign_Q2 (ID, Name, Budget, Update_Date) values 
(1001, 'Summer Ads', 10000, '2026-01-01'),
(1002, 'Winter Ads', 15000, '2026-01-01'),
(1003, 'Spring Ads', 20000, '2026-01-01');

-- check (then run the SSIS then run these agn)
select * from Campaign_Q2;
select * from Campaign_Q2_Target;

-- test update budget
update Campaign_Q2 
set Budget = 12000, Update_Date = getdate() 
where ID = 1002;

update Campaign_Q2 
set Budget = 54000, Update_Date = getdate() 
where ID = 1001;

-- Check (run AFTER running SSIS)
select * from Campaign_Q2;
select * from Campaign_Q2_Target;

update Watermark set Last_Load = '2000-01-01' where TableName = 'Campaign_Q2';