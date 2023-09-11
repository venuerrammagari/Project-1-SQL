create database projectSQL;
use projectSQL;
/*1.groups table*/
 create table GROUP_EXAMPLE(Group_ID Long,Name varchar(40));
 alter table GROUP_EXAMPLE modify column Group_ID bigint primary key;
 desc GROUP_EXAMPLE;
 /* 2.SUBJECTS TABLE*/
 create table subjects(subject_id bigint primary key,Title varchar(30));
 
 /* 3.teachers table*/
 create table teachers( teacher_id bigint primary key,f_name varchar(30),l_name varchar(30));
 
 /* 4.SUBJ-TEACH*/
 create table subj_teach(st_id bigint primary key,subject_id bigint,teacher_id bigint,group_id bigint,
					foreign key(subject_id) references subjects(subject_id),foreign key(teacher_id) references teachers(teacher_id),
                    foreign key(group_id) references group_example(group_id));
desc subj_teach;
/* STUDENTS*/
create table students(student_id bigint primary key,f_name varchar(30),l_name varchar(30),group_id bigint,
foreign key(group_id) references group_example(group_id));
/* 6.Marks*/
create table marks(markid bigint primary key,subject_id bigint,student_id bigint,date_time timestamp,mark int,
					foreign key(subject_id) references subjects(subject_id),
                    foreign key(student_id) references students(student_id));
desc marks;



 
 
