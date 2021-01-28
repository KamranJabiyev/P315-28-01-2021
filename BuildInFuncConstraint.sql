SELECT * FROM Students

INSERT INTO Students
VALUES(6,'Test2','Testov',100)

SELECT AVG(Age) 'Avarage Age' FROM Students

SELECT * FROM Students
WHERE Age>(SELECT AVG(Age) FROM Students)

SELECT MAX(Age) 'Max Age' FROM Students

SELECT Name,Age FROM Students
WHERE Age=(SELECT MAX(Age) FROM Students)

SELECT MIN(Age) FROM Students

SELECT Name,Age FROM Students
WHERE Age=(SELECT MIN(Age) FROM Students)

ALTER TABLE Students
ADD Email nvarchar(255)

SELECT Name,Email FROM Students

SELECT Name,Email FROM Students
WHERE Email LIKE '%gmail%' OR Email LIKE '%code.az'

SELECT LEN(Name) FROM Students

SELECT Name,CHARINDEX('a',Name) FROM Students

SELECT SUBSTRING(Email,0,4) FROM Students

SELECT SUBSTRING(Email,CHARINDEX('@',Email)+1,LEN(Email)) FROM Students

SELECT COUNT(*) FROM Students

CREATE TABLE Countries(
	Id int primary key identity,
	Name nvarchar(150) unique not null,
	Population int,
	Area decimal(10,2)
)

CREATE TABLE Cities(
	Id int primary key identity,
	Name nvarchar(150) not null,
	Population int,
	CountryId int references Countries(Id)
)

INSERT INTO Cities
VALUES('Baku',1145000,1)

INSERT INTO Countries 
VALUES('Turkey',12325,21434.12435)

SELECT * FROM Countries
