create database db_university;
use db_university;



-- DATI

insert into departments (name, address, phone, email, website, head_of_department) values ('Geometria', 'Via Tromello', '3332378125', 'lucafender@hotmail.it', 'ciao.com', 'Pino');
insert into departments (name, address, phone, email, website, head_of_department) values ('Geometria', 'Via Tromello', '3332378125', 'lucafender@hotmail.it', 'ciao.com', 'Pino');

insert into `degrees` (adress, name, email, website, `level`, departments_id) values ('Via Tromello', 'Geometria Avanzata', 'ciao.gmail.com', 'cioa.com', 'master', 1);
insert into `degrees` (adress, name, email, website, `level`, departments_id) values ('Via Tromello', 'Geometria Base', 'ciao.gmail.com', 'cioa.com', 'base', 1);

insert into student (name, surname, date_of_birth, fiscal_code, enrolment_date, registration_numer, email, `degrees_id`) values ('Luca', 'Vigentini', '1997-09-06', 'abcdefghi', '2021-10-25', '0906', 'ciao.gmail.com', 1);
insert into student (name, surname, date_of_birth, fiscal_code, enrolment_date, registration_numer, email, `degrees_id`) values ('Gino', 'Ciao', '1994-09-06', 'abcdefghi', '2021-10-25', '0905', 'ciao.gmail.com', 1);

insert into courses (name, description, website, cfu, degrees_id) values ('Matematica', 'I numeri belli', 'lamatematicabella.com', '120', 1);
insert into courses (name, description, website, cfu, degrees_id) values ('Fisica', 'I pesi belli', 'lafisicabella.com', '130', 1);

insert into teachers (name, surname, phone, email, office_adress,courses_id) values ('Pino', 'Palladino', '3332345123', 'ciaociao.gmail.com', 'via montenapoleone 500', 1);
insert into teachers (name, surname, phone, email, office_adress,courses_id) values ('Piero', 'Palladino', '3332545123', 'ciaociao1.gmail.com', 'via montenapoleone 502', 1);

insert into exams (`date`, `hour`, location, adress, courses_id) values ('2022-1-22', '12:30:00', 'primo piano', 'sempre il solito 3', 1);
insert into exams (`date`, `hour`, location, adress, courses_id) values ('2022-2-20', '15:30:00', 'secondo piano', 'sempre il solito 5', 1);

insert into vote (student_id, exams_id, voto) values (1, 1, '100');
insert into vote (student_id, exams_id, voto) values (2, 1, '90');


