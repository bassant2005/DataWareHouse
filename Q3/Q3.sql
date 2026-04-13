CREATE TABLE Device_Status (
    Device_ID VARCHAR(10),
    Device_Type VARCHAR(50),
    Location VARCHAR(50),
    Status VARCHAR(50),
    Schedule_Date DATE
);

CREATE TABLE Device_Status_History (
    Device_Key INT IDENTITY(1,1) PRIMARY KEY,
    Device_ID VARCHAR(10),
    Device_Type VARCHAR(50),
    Location VARCHAR(50),
    Status VARCHAR(50),
    Insert_Date DATE,
    Active_Flag BIT,
    Version_No INT
);

INSERT INTO Device_Status VALUES
('D101','Ventilator','ICU','Active','2026-03-27'),
('D102','MRI','Radiology','Active','2026-03-27'),
('D103','Pump','ER','Maintenance','2026-03-27');

UPDATE Device_Status
SET Schedule_Date = '2026-03-28'
WHERE Schedule_Date = '2026-03-27';

select * from Device_Status
select * from Device_Status_History

delete from Device_Status
delete from Device_Status_History