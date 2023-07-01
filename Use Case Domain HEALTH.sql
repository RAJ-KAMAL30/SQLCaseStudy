-- Creating and using a Database 
use heathcare;

-- Creating Patient Table 

create table patient ( 
p_id int primary key ,
name varchar(30),
address varchar(100),
DOB varchar(20),
contact_info int 
);

-- Creating Medical History Table 

create table medicalHistory (
record_id int primary key ,
diagnosis varchar(100),
p_id int ,
treatment varchar(200),
surgeries varchar(50),
medications varchar(100)
);


-- Creating Prescriptions Table 

create table prescription (
p_id int ,
medication_name varchar(20),
dosage varchar(10),
frequency varchar(10)
);

-- creating Outcome Table 

create table outcome (
p_id int ,
readmission_rates_percentage int ,
medical_adherance int 
);

-- creating Lab Results Table 

create table lab_results (
blood_tests int ,
urine_test int , 
imaging_test int 
);

-- Querying the Database

select * from patient ;

alter table patient modify column contact_info varchar(25);

select address from patient where p_id=1;

show tables; 

alter table patient  modify p_id int auto_increment;

delete from patient where p_id=4;



update patient set p_id = 4 where p_id =5;

alter table patient auto_increment = 5;

delete from patient where p_id =6;

alter table medicalHistory modify column record_id int auto_increment ;

alter table medicalHistory modify column p_id int auto_increment ;
 
 
alter table medicalHistory add constraint foreign key(p_id) references patient(p_id);
 
select * from medicalHistory ; 
 
 select * from lab_results;
 
 delete from lab_results where p_id is null ;
 
alter table lab_results add column p_id int ;
 
ALTER TABLE lab_results
MODIFY COLUMN blood_tests varchar(200) ;


select * from patient;

delete from lab_results where p_id = 2 ;


create table Outcomes (
p_id int,
readmission_rates int ,
medical_adherance int 
);

select * from prescription;