-- soal quiz 1 no 1 many to many, ;

create table employes_has_projects(
	id_has serial primary key,
	employe_id integer,
	proj_id integer,
	foreign key(employe_id) references employees(employe_id) on update cascade on delete cascade,
	foreign key(proj_id) references projects(proj_id) on update cascade on delete cascade
);

select * from employes_has_projects;

create table employees(
	employe_id serial primary key,
	frist_name varchar(25),
	last_name varchar(20) not null,
	email varchar (100) not null,
	phone_number varchar (20)not null,
	hire_date date not null
);

create table projects(
	proj_id serial primary key,
	proj_name varchar(100),
	proj_duedate date,
	proj_cust_name varchar(100),
	employe_id integer not null,
	foreign key(employe_id) references employees(employe_id) on update cascade on delete cascade
)

select * from projects;

-- soal nomer 2 menambahkan column 
-- proj_description varchar(255) 
-- proj_status varchar(15)
-- proj_amount number;

alter table projects add column proj_description varchar(255);
alter table projects add column proj_status varchar(15);
alter table projects add column proj_amount integer;

-- soal no 3, menambahkan column proj_description varchar(255)
-- dan tambahkan dan buat table contstraint fk prjects ke employees
alter table projects add constraint projects_employees_id_fk foreign key(employees_id) references employees(employe_id)
alter table projects drop employe_id
alter table projects add column employe_id integer
alter table projects add foreign key (employe_id) references empolyees(employe_id)


-- soal no 4 input values table projects--
insert into projects (proj_name,proj_cust_name,proj_status) values ('ECOMMERCE','INDOSAT','INPROGRESS')
insert into projects (proj_name,proj_cust_name,proj_status) values ('ECOMMERCE','INDOSAT','INPROGRESS')
insert into projects (proj_name,proj_cust_name,proj_status) values ('ECOMMERCE','INDOSAT','INPROGRESS')

--soal no 5--
create table project_assignment(
	pras_proj_id integer,
	pras_name varchar(20)
)
insert into project_assignment(pras_name) values ('ASGINNED')

alter table projects add column pras_proj_id integer;
select * from projects;
--soal jawaban no 6--
insert into projects (proj_name,proj_cust_name,pras_proj_id) values ('Tiket.com','XL',1)

