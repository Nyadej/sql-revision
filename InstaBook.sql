CREATE DATABASE IF NOT EXISTS InstaBook;
USE InstaBook;
CREATE TABLE Profiles (
	ProfileId int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    FullName VARCHAR(255) NOT NULL,
    UserHandle VARCHAR(255) NOT NULL,
    EmailAddress VARCHAR(255) NOT NULL, 
    Description VARCHAR(1000) NULL, 
    Picture VARCHAR(500) NULL
);

INSERT INTO Profiles (FullName,UserHandle,EmailAddress,Description,Picture)
VALUES 
('Naomi Adejumo','@Naomi','naomi@me.com',NULL,'naomi.jpg'),
('Mariam Sharp','@SuperSharp','mariam@awesome.com','Looking after all you\'re learning needs',NULL);
SELECT * FROM Profiles;
CREATE TABLE Posts (
	PostId int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ProfileId int NOT NULL references ,
    PostDate DATETIME NOT NULL, 
    PostPicture VARCHAR(500) NOT NULL, 
    PostCaption VARCHAR(255) NULL
);

SHOW DATABASES;
SHOW TABLES;