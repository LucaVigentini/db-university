create database db_university;
use db_university;



CREATE TABLE departments(
	id INT NOT NULL AUTO_INCREMENT,
	name VARCHAR(100) NOT NULL,
	address VARCHAR(255) NOT NULL,
	phone VARCHAR(20) NOT NULL,
	email VARCHAR(100) NOT NULL,
	website VARCHAR(100) NOT NULL,
	head_of_department VARCHAR(100) NOT NULL,
	PRIMARY KEY(id)
);
	
CREATE TABLE `degrees`(
	id INT NOT NULL AUTO_INCREMENT,
	adress VARCHAR(255),
	name VARCHAR(255) NOT NULL,
	email VARCHAR(100),
	website VARCHAR(100),
	`level` VARCHAR(100),
	departments_id INT NOT NULL,
	PRIMARY KEY(id),
	FOREIGN KEY(departments_id) REFERENCES departments(id)
);

	
CREATE TABLE `student`(
	id INT NOT NULL AUTO_INCREMENT,
	name VARCHAR(100) NOT NULL,
	surname VARCHAR(255) NOT NULL,
	date_of_birth DATE NOT NULL,
	fiscal_code VARCHAR(100) not null,
	enrolment_date DATE not null,
	registration_numer VARCHAR(100) not null,
	email VARCHAR(100) NOT NULL,
	degrees_id INT not null,
	PRIMARY KEY(id),
	FOREIGN KEY(degrees_id) REFERENCES `degrees`(id)
);

CREATE TABLE courses(
	id INT NOT NULL AUTO_INCREMENT,
	name VARCHAR(100) NOT NULL,
	description VARCHAR(255) NOT NULL,
	website VARCHAR(100) NOT NULL,
	cfu VARCHAR(100) not null,
	degrees_id INT not null,
	PRIMARY KEY(id),
	FOREIGN KEY(degrees_id) REFERENCES `degrees`(id)
);

CREATE TABLE teachers(
	id INT NOT NULL AUTO_INCREMENT,
	name VARCHAR(100) NOT NULL,
	surname VARCHAR(255) NOT NULL,
	phone VARCHAR(20) not null,
	email VARCHAR(100) not null,
	office_adress VARCHAR(100) NOT NULL,
	courses_id INT not null,
	PRIMARY KEY(id),
	FOREIGN KEY(courses_id) REFERENCES courses(id)
);

CREATE TABLE exams(
	id INT NOT NULL AUTO_INCREMENT,
	`date` DATE NOT NULL,
	`hour` TIME NOT NULL,
	location VARCHAR(200) not null,
	adress VARCHAR(100) not null,
	courses_id INT not null,
	PRIMARY KEY(id),
	FOREIGN KEY(courses_id) REFERENCES courses(id)
);

CREATE TABLE vote(
	`student_id` INT NOT NULL,
	`exams_id` INT NOT NULL,
	PRIMARY KEY(student_id, exams_id),
	FOREIGN KEY(student_id) REFERENCES student(id),
	FOREIGN KEY(exams_id) REFERENCES exams(id)
);



alter table `vote` add `voto` INT not null; 
