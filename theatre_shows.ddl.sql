DROP DATABASE IF EXISTS theatre_shows;

CREATE DATABASE theatre_shows;

USE theatre_shows;

CREATE TABLE Cities(
    CityID INT AUTO_INCREMENT,
    CityName VARCHAR(50) NOT NULL,
    CONSTRAINT PRIMARY KEY CitiesPk(CityID)
);

CREATE TABLE Theatres(
    TheatreID INT AUTO_INCREMENT,
    TheatreName VARCHAR(50) NOT NULL,
    City INT NOT NULL,
    TheatreLocation VARCHAR(50) NOT NULL,
    CONSTRAINT PRIMARY KEY TheatresPk(TheatreID),
    CONSTRAINT FOREIGN KEY TheatresFk(City) references Cities(CityID)
);

CREATE TABLE TheatreCompanies(
    CompanyID INT AUTO_INCREMENT,
    CompanyName VARCHAR(50) NOT NULL,
    CONSTRAINT PRIMARY KEY CompanyPk(CompanyID)
);

CREATE TABLE Shows(
    ShowID INT AUTO_INCREMENT,
    ShowTitle VARCHAR(50) NOT NULL,
    ShowCompany INT NOT NULL,
    ShowDescription VARCHAR(500) NOT NULL,
    ShowLength TIME NOT NULL,
    TicketPrice DOUBLE(5, 2) NOT NULL,
    ShowImage varchar(50),
    CONSTRAINT PRIMARY KEY ShowsPk(ShowID),
    CONSTRAINT FOREIGN KEY ShowsFk1(ShowCompany) references TheatreCompanies(CompanyID)
);

CREATE TABLE Events(
    EventID INT AUTO_INCREMENT,
    EventTheatre INT NOT NULL,
    EventShow INT NOT NULL,
    EventDateTime DATETIME NOT NULL,
    CONSTRAINT PRIMARY KEY EventPk(EventID),
    CONSTRAINT EventsUk UNIQUE(EventTheatre, EventDateTime),
    CONSTRAINT FOREIGN KEY EventsFk1(EventTheatre) references Theatres(TheatreID),
    CONSTRAINT FOREIGN KEY EventsFk2(EventShow) references Shows(ShowID)
);



