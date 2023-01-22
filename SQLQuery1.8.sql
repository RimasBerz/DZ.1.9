USE Publishment 

CREATE TABLE Themes
(
	id int primary key identity(1,1),
	name nvarchar(50),
)

CREATE TABLE Country
(
	id int primary key identity(1,1),
	name nvarchar(50),
)

CREATE TABLE Authors
(
	id int primary key identity(1,1),
	firstname nvarchar(50),
	lastname nvarchar(50),
	id_country int REFERENCES Country(id)
)


CREATE TABLE Books
(
	id int primary key identity(1,1),
	name nvarchar(50),
	id_theme int REFERENCES Themes(id),
	id_author int REFERENCES Authors(id),
	price float,
	date_of_publish DATE,
	pages nvarchar(50)
)

CREATE TABLE Shops
(
    id int primary key identity(1,1),
	name nvarchar(50),
	id_country int REFERENCES Country(id)
)


CREATE TABLE Sales
(
	id int primary key identity(1,1),
	id_book int REFERENCES Books(id),
	id_shop int REFERENCES Shops(id),
	date_of_sale datetime default GETDATE(),
	price float,
	quantity int
)

