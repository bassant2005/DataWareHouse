create table Device_Status (
    Device_ID varchar(10),
    Device_Type varchar(50),
    Location varchar(50),
    Status varchar(50),
    Schedule_Date date
);

create table Device_Status_History (
    Device_Key int identity(1,1) primary key,
    Device_ID varchar(10),
    Device_Type varchar(50),
    Location varchar(50),
    Status varchar(50),
    Insert_Date date,
    Active_Flag bit,
    Version_No int
);

-- setup data
truncate table Device_Status;
truncate table Device_Status_History;

insert into Device_Status values
('D101','Ventilator','ICU','Active','2026-03-27'),
('D102','MRI','Radiology','Active','2026-03-27'),
('D103','Pump','ER','Maintenance','2026-03-27');

-- check (Run after SSIS)
select * from Device_Status_History order by Device_ID, Version_No;

-- test next day (after this run SSIS again to see new versions)
update Device_Status
set Schedule_Date = '2026-03-28'
where Schedule_Date = '2026-03-27';

-- reset
truncate table Device_Status;
truncate table Device_Status_History;