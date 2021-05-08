#sql connect 

mysql -y root -p;

#show databases

show databases;

#create database

create database my_db;

#change db

use db my_db;

#create table

CREATE TABLE Employee2 (  
  emp_id int(10) NOT NULL,  
  name varchar(40) NOT NULL,  
  birthdate date NOT NULL,  
  gender varchar(10) NOT NULL,  
  hire_date date NOT NULL,  
  PRIMARY KEY (emp_id)  
);  


#db export create table

CREATE TABLE `Person` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `companyname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `industry` bigint(20) UNSIGNED DEFAULT NULL,
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



#insert create table

INSERT INTO Employee2 (emp_id, name, birthdate, gender, hire_date) VALUES  
(101, 'Bryan', '1988-08-12', 'M', '2015-08-26'),  
(102, 'Joseph', '1978-05-12', 'M', '2014-10-21'),  
(103, 'Mike', '1984-10-13', 'M', '2017-10-28'),  
(104, 'Daren', '1979-04-11', 'M', '2006-11-01'),  
(105, 'Marie', '1990-02-11', 'F', '2018-10-12');  


#db export insert table


INSERT INTO `Person` (`id`, `companyname`, `email`, `phone`, `website`, `created_at`, `updated_at`) VALUES
(1, 'murali', 'muali@gmail.com', '9999999', 'example.com','2021-02-04 00:41:20', '2021-03-29 10:34:30')


#ADD KEY, UNIQUE KEY, PRIMARY KEY


ALTER TABLE `Person`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Person_email_unique` (`email`),
  ADD UNIQUE KEY `Person_phone_unique` (`phone`),
  ADD KEY `Person_website_foreign` (`website`),
  
 #Add Constraints and FOREIGN KEY for table `Person`
 
 ALTER TABLE `Person`
   ADD CONSTRAINT `Person_phone_unique` FOREIGN KEY (`industry`) REFERENCES `masters` (`id`) ON DELETE CASCADE,
 
 
 
 #Add FOREIGN KEY for table `Employee2` and 'Payment2' example
  
 
 CREATE TABLE Employee2 (  
  emp_id int(10) NOT NULL,  
  name varchar(40) NOT NULL,  
  birthdate date NOT NULL,  
  gender varchar(10) NOT NULL,  
  hire_date date NOT NULL,  
  PRIMARY KEY (emp_id)  
);  



INSERT INTO Employee2 (emp_id, name, birthdate, gender, hire_date) VALUES  
(101, 'Bryan', '1988-08-12', 'M', '2015-08-26'),  
(102, 'Joseph', '1978-05-12', 'M', '2014-10-21'),  
(103, 'Mike', '1984-10-13', 'M', '2017-10-28'),  
(104, 'Daren', '1979-04-11', 'M', '2006-11-01'),  
(105, 'Marie', '1990-02-11', 'F', '2018-10-12');  


select * from Employee2;


CREATE TABLE Payment2 (  
  payment_id int(10) PRIMARY KEY NOT NULL,  
  emp_id int(10) NOT NULL,  
  amount float NOT NULL,  
  payment_date date NOT NULL,  
  FOREIGN KEY (emp_id) REFERENCES Employee2 (emp_id) ON DELETE CASCADE  
);  


INSERT INTO Payment2 (payment_id, emp_id, amount, payment_date) VALUES   
(301, 101, 1200, '2015-09-15'),  
(302, 101, 1200, '2015-09-30'),  
(303, 101, 1500, '2015-10-15'),  
(304, 101, 1500, '2015-10-30'),  
(305, 102, 1800, '2015-09-15'),  
(306, 102, 1800, '2015-09-30');  


select * from Payment2;


DELETE FROM Employee2 WHERE emp_id = 102;  


ALTER TABLE child_table_name 
  ADD CONSTRAINT fk_name 
  FOREIGN KEY (child_column_name) 
  REFERENCES parent_table_name(parent_column_name) 
  ON DELETE CASCADE;





