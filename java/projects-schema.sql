drop table if exists project;
drop table if exists step; 
drop table if exists material;
drop table if exists category; 
drop table if exists project_category; 

create table project ( 
project_id int not null auto_increment, 
project_name varchar(128) not null,
estimated_hours decimal(7,2), 
actual_hours decimal(7,2), 
difficulty int auto_increment,
notes int auto_increment,
primary key (project_id) 
);

create table step(
step_id int not null auto_increment,
project_id int not null auto_increment,
step_text text not null, 
step_order int not null auto_increment,
primary key(step_id),
foreign key (project_id) references project (project_id)
);

create table material (
material_id int not null auto_increment,
project_id int not null auto_increment, 
material_name varchar(128) not null auto_increment, 
num_required int auto_increment, 
cost decimal(7,2), 
primary key( material_id),
foreign key (project_id) references project (project_id)
);

create table category (
category_id int not null auto_increment,
category_name varchar(128) not null,
primary key( category_id) 
);

create table project_category(
project_id int not null auto_increment,
category_id int not null auto_increment

);