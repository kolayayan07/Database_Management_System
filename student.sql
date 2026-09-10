create table course (
    course_id number primary key not null,
    course_name varchar2(100) not null
);

create table student (
    student_id number primary key not null,
    student_name varchar2(50) not null,
    email varchar(100) not null unique,
    DOB date not null,
    gender varchar2(10) not null,
    address varchar2(200),
    phone_number varchar2(15),
    course_id number not null,
    foreign key (course_id) references course(course_id))
);

insert into course (course_id, course_name) values (101, 'BCA');
insert into course (course_id, course_name) values (102, 'BBA');
insert into course (course_id, course_name) values (301, 'MCA');


insert into student (student_id, student_name, email, DOB, gender, address, phone_number, course_id) values (1, 'John Doe', 'john.doe@example.com', '1995-01-01', 'Male', '123 Main St', '555-1234', 101);
insert into student (student_id, student_name, email, DOB, gender, address, phone_number, course_id) values (2, 'Jane Smith', 'jane.smith@example.com', '1996-05-15', 'Female', '456 Oak Ave', '555-5678', 102);    
insert into student (student_id, student_name, email, DOB, gender, address, phone_number, course_id) values (3, 'Alice Johnson', 'alice.johnson@example.com', '1997-08-20', 'Female', '789 Pine Rd', '555-9012', 301);
insert into student (student_id, student_name, email, DOB, gender, address, phone_number, course_id) values (4, 'Bob Brown', 'bob.brown @example.com', '1998-12-10', 'Male', '321 Cedar St', '555-3456', 101);

