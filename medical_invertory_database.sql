create database medical;
use medical;
/* medicines*/
create table medicines(
medicine_id varchar(10) Primary Key,
medicine_name	VARCHAR(100),
generic_id	VARCHAR(10),
category_id	VARCHAR(10),
manufacturer_id	VARCHAR(10),
price	DECIMAL(6,2),	
stock	INT	,
expiry_date	DATE,	
batch_no	VARCHAR(20)	,
prescription_required	BOOLEAN

);
/* Generics*/
create table generics(
generic_id	VARCHAR(10)	Primary Key,
generic_name	VARCHAR(100),	
side_effects	TEXT,	
dosage	VARCHAR(50)
);
/* Categories*/
create table categories(
category_id	VARCHAR(10)	Primary Key,
category_name	VARCHAR(100)
);

/*Manufacturers*/
create table manufacturers(
manufacturer_id	VARCHAR(10)	Primary Key,
name	VARCHAR(100),	
address	VARCHAR(255)
);
/* insert data into medicines table*/
INSERT INTO medicines (
    medicine_id, medicine_name, generic_id, category_id,
    manufacturer_id, price, stock, expiry_date,
    batch_no, prescription_required
) VALUES
('M001', 'Paracetamol 500mg', 'G01', 'C01', 'MFG01', 12.00, 150, '2026-04-10', 'B02123', FALSE),
('M002', 'Amoxicillin 250mg', 'G02', 'C02', 'MFG02', 35.00, 80, '2025-12-31', 'A11098', TRUE),
('M003', 'Cetirizine 10mg', 'G03', 'C03', 'MFG03', 8.00, 200, '2026-07-20', 'C30567', FALSE),
('M004', 'Pantoprazole 40mg', 'G04', 'C04', 'MFG04', 25.00, 100, '2025-11-15', 'P98456', TRUE),
('M005', 'Azithromycin 500mg', 'G05', 'C02', 'MFG05', 55.00, 60, '2026-01-10', 'AZ54875', TRUE),
('M006', 'Metformin 500mg', 'G06', 'C05', 'MFG06', 10.00, 90, '2027-03-01', 'M87765', TRUE),
('M007', 'Dolo 650mg', 'G01', 'C01', 'MFG07', 15.00, 180, '2026-05-20', 'D12345', FALSE),
('M008', 'Ivermectin 12mg', 'G07', 'C06', 'MFG08', 30.00, 70, '2026-09-25', 'IV90123', TRUE);
/* inserting data into fenerics*/
INSERT INTO generics (
    generic_id, generic_name, side_effects, dosage
) VALUES
('G01', 'Paracetamol', 'Nausea, rash', '500mg twice a day'),
('G02', 'Amoxicillin', 'Diarrhea, vomiting', '250mg thrice a day'),
('G03', 'Cetirizine', 'Drowsiness, dry mouth', '10mg once a day'),
('G04', 'Pantoprazole', 'Headache, dizziness', '40mg before meals'),
('G05', 'Azithromycin', 'Stomach upset, rash', '500mg once a day'),
('G06', 'Metformin', 'Nausea, metallic taste', '500mg twice a day'),
('G07', 'Ivermectin', 'Muscle pain, drowsiness', '12mg once daily');

/* inserting data into categories*/
INSERT INTO categories (
    category_id, category_name
) VALUES
('C01', 'Analgesic'),
('C02', 'Antibiotic'),
('C03', 'Antihistamine'),
('C04', 'Antacid'),
('C05', 'Antidiabetic'),
('C06', 'Antiparasitic');
/* inserting data into manufacturers table*/
INSERT INTO manufacturers (
    manufacturer_id, name, address
) VALUES
('MFG01', 'Cipla Ltd.', 'Mumbai, Maharashtra, India'),
('MFG02', 'Sun Pharma', 'Vadodara, Gujarat, India'),
('MFG03', 'Ranbaxy', 'Gurugram, Haryana, India'),
('MFG04', 'Dr. Reddy\'s Labs', 'Hyderabad, Telangana, India'),
('MFG05', 'Glenmark', 'Mumbai, Maharashtra, India'),
('MFG06', 'Torrent Pharma', 'Ahmedabad, Gujarat, India'),
('MFG07', 'Micro Labs', 'Bangalore, Karnataka, India'),
('MFG08', 'Intas Pharma', 'Ahmedabad, Gujarat, India');

-- Basic SELECT Queries
/*List all medicines that do not require a prescription.*/
select* from medicines where prescription_required='FALSE';

/*Find medicines that will expire before December 31, 2025.*/
SELECT medicine_id, medicine_name, expiry_date
FROM medicines
WHERE expiry_date < '2025-12-31';

/*Get the names and prices of medicines where stock is less than 100.*/
select medicine_name,price from medicines where stock<100;

-- JOIN-Based Queries
/*List all medicine names with their generic names and side effects.*/
SELECT
    m.medicine_id,
    m.medicine_name,
    g.generic_name,
    g.side_effects,
    g.dosage
FROM medicines m
JOIN generics g ON m.generic_id = g.generic_id;

/*Show each medicine along with its category and manufacturer name.*/
SELECT
    m.medicine_id,
    m.medicine_name,
    c.category_name,
    mf.name AS manufacturer_name
FROM medicines m
JOIN categories c ON m.category_id = c.category_id
JOIN manufacturers mf ON m.manufacturer_id = mf.manufacturer_id;

/*List all medicines with their dosage, category, and whether a prescription is required.*/
select
m.medicine_name,
g.dosage,
c.category_name,
m.prescription_required
from medicines m
join generics g on m.generic_id=g.generic_id
join categories c on c.category_id=m.category_id;

-- Filtering and Sorting
/*Display the top 5 most expensive medicines.*/
select medicine_name,price from medicines order by price desc limit 5;

/*Find all medicines manufactured by companies located in Gujarat.*/
SELECT 
    m.medicine_name,
    mf.name AS manufacturer_name,
    mf.address
FROM medicines m
JOIN manufacturers mf ON mf.manufacturer_id = m.manufacturer_id
WHERE mf.address LIKE '%Gujarat%';

/*List all antibiotics that are in stock.*/
SELECT
    m.medicine_id,
    m.medicine_name,
    c.category_name,
    m.stock
FROM medicines m
JOIN categories c ON m.category_id = c.category_id
WHERE c.category_name = 'Antibiotic' AND m.stock > 0;



