create database [SQL-Aggregate functions, Relations, Joins]

use [SQL-Aggregate functions, Relations, Joins]

create table Students(
	[Id] int primary key identity(1,1),
	[FullName] nvarchar(150),
	[Email] nvarchar(150),
)

insert Students([FullName], [Email])
values ('Student1 Surname','student1surname@gmail.com'),
	   ('Student2 Surname','student2surname@gmail.com'),
	   ('Student3 Surname','student3surname@gmail.com')


SELECT Left([Email], CHARINDEX('@',[Email])-1) 'Email before @' FROM [Students]

select SUBSTRING([Email],CHARINDEX('@',[Email])+1,LEN([Email])) 'Email after @' FROM [Students]

select * from [Students] 



create database [Hospital]

use [Hospital]

create table Professions(
	[Id] int primary key identity(1,1),
	[Name] nvarchar(100)
)

insert Professions([Name])
values ('Heart Surgeon'),
	   ('Plastic Surgeon'),
	   ('Psychiatrist'),
	   ('Dentist'),
	   ('Vet')


create table Doctors(
	[Id] int primary key identity(1,1),
	[FullName] nvarchar(150),
	[ProfessionId] int,
	[Salary] int,
	foreign key (ProfessionId) references Professions(Id)
)


insert Doctors([FullName], [ProfessionId], [Salary])
values ('Doctor 1', 1, 40000),
	   ('Doctor 2', 3, 9000),
	   ('Doctor 3', 2, 20000),
	   ('Doctor 4', 4, 16000),
	   ('Doctor 5', 1, 39000),
	   ('Doctor 6', 5, 20000),
	   ('Doctor 7', 2, 15000)


create table Patients(
	[Id] int primary key identity(1,1),
	[FullName] nvarchar(150),
	[Age] int,
	[DoctorId] int,
	foreign key ([DoctorId]) references Doctors(Id)
)

insert Patients([FullName], [Age], [DoctorId])
values ('Patient1',19,1),
	   ('Patient2',19,2),
	   ('Patient3',19,3),
	   ('Patient4',19,7),
	   ('Patient5',19,4),
	   ('Patient6',20,5),
	   ('Patient7',49,6)
