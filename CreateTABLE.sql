CREATE TABLE Persons (
	
	PersonID INT PRIMARY KEY, 
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
)


CREATE TABLE Inventory (
	Game varchar (255) PRIMARY KEY, 
	Description varchar(255), 
	Console varchar(255), 
)

CREATE TABLE Borrowed (
	ClientID INT REFERENCES Persons (PersonID), 
	Gamename varchar (255) REFERENCES Inventory( Game ) 
)
