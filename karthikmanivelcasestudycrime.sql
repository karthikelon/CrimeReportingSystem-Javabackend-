use crimecasestudy;
-- Creating Incidents Table
CREATE TABLE Incidents (
    IncidentID INT PRIMARY KEY,
    IncidentType VARCHAR(255),
    IncidentDate DATE,
    Location varchar(255), 
    Descriptions varchar(255),
    Statuss VARCHAR(255),
    VictimID INT,
    SuspectID INT,
    FOREIGN KEY (VictimID) REFERENCES Victims(VictimID),
    FOREIGN KEY (SuspectID) REFERENCES Suspects(SuspectID)
);

-- Creating Victims Table
CREATE TABLE Victims (
    VictimID INT PRIMARY KEY,
    FirstName VARCHAR(255),
    LastName VARCHAR(255),
    DateOfBirth DATE,
    Gender VARCHAR(10),
    ContactInformation VARCHAR(255)
);

-- Creating Suspects Table
CREATE TABLE Suspects (
    SuspectID INT PRIMARY KEY,
    FirstName VARCHAR(255),
    LastName VARCHAR(255),
    DateOfBirth DATE,
    Gender VARCHAR(10),
    ContactInformation VARCHAR(255)
);
-- Creating Law Enforcement Agencies Table
CREATE TABLE LawEnforcementAgencies (
    AgencyID INT PRIMARY KEY,
    AgencyName VARCHAR(255),
    Jurisdiction VARCHAR(255),
    ContactInformation VARCHAR(255)
);

-- Creating Officers Table
CREATE TABLE Officers (
    OfficerID INT PRIMARY KEY,
    FirstName VARCHAR(255),
    LastName VARCHAR(255),
    BadgeNumber VARCHAR(50),
    Ranks VARCHAR(50),
    ContactInformation VARCHAR(255),
    AgencyID INT,
    FOREIGN KEY (AgencyID) REFERENCES LawEnforcementAgencies(AgencyID)
);

-- Creating Evidence Table
CREATE TABLE Evidence (
    EvidenceID INT PRIMARY KEY,
    Descriptions TEXT,
    LocationFound VARCHAR(255),
    IncidentID INT,
    FOREIGN KEY (IncidentID) REFERENCES Incidents(IncidentID)
);

-- Creating Reports Table
CREATE TABLE Reports (
    ReportID INT PRIMARY KEY,
    IncidentID INT,
    ReportingOfficer INT,
    ReportDate DATE,
    ReportDetails TEXT,
    Statuss VARCHAR(50),
    FOREIGN KEY (IncidentID) REFERENCES Incidents(IncidentID),
    FOREIGN KEY (ReportingOfficer) REFERENCES Officers(OfficerID)
);


CREATE TABLE cases (
    caseID INT PRIMARY KEY,
    caseDescription VARCHAR(255),
    incidentID INT,
    FOREIGN KEY (incidentID) REFERENCES incidents(incidentID)
);
INSERT INTO Victims (VictimID, FirstName, LastName, DateOfBirth, Gender, ContactInformation)
VALUES
  (1, 'John', 'Doe', '1990-05-15', 'Male', '123 Main St, City, Country, 12345'),
  (2, 'Jane', 'Smith', '1985-08-22', 'Female', '456 Oak St, Town, Country, 67890'),
  (3, 'Michael', 'Johnson', '1993-02-10', 'Male', '789 Pine St, Village, Country, 34567'),
  (4, 'Emily', 'Davis', '1988-11-30', 'Female', '987 Elm St, Hamlet, Country, 87654'),
  (5, 'Daniel', 'Martinez', '1995-07-18', 'Male', '654 Birch St, Borough, Country, 23456'),
  (6, 'Sophia', 'Wang', '1982-04-25', 'Female', '321 Cedar St, City, Country, 65432'),
  (7, 'Mason', 'Nguyen', '1998-09-12', 'Male', '876 Maple St, Town, Country, 56789');
  
INSERT INTO Suspects (SuspectID, FirstName, LastName, DateOfBirth, Gender, ContactInformation)
VALUES
  (1, 'Mark', 'Johnson', '1987-06-25', 'Male', '543 Oak St, City, Country, 54321'),
  (2, 'Linda', 'Brown', '1992-03-12', 'Female', '876 Pine St, Town, Country, 23456'),
  (3, 'Christopher', 'White', '1989-09-05', 'Male', '234 Birch St, Village, Country, 87654'),
  (4, 'Jessica', 'Lee', '1991-12-18', 'Female', '765 Elm St, Hamlet, Country, 34567'),
  (5, 'Brian', 'Garcia', '1984-07-30', 'Male', '321 Cedar St, Borough, Country, 65432'),
  (6, 'Kimberly', 'Wu', '1997-02-14', 'Female', '654 Maple St, City, Country, 76543'),
  (7, 'Jordan', 'Nguyen', '1994-11-08', 'Male', '987 Pine St, Town, Country, 87654');

INSERT INTO Incidents (IncidentID, IncidentType, IncidentDate, Location, Descriptions, Statuss, VictimID, SuspectID)
VALUES
  (1, 'Robbery', '2023-01-15', 'Latitude: 123.456, Longitude: 789.012', 'Armed robbery at a convenience store', 'Open', 1, 1),
  (2, 'Homicide', '2023-02-20', 'Latitude: 456.789, Longitude: 012.345', 'Murder investigation in downtown', 'Closed', 2, 2),
  (3, 'Theft', '2023-03-10', 'Latitude: 789.012, Longitude: 345.678', 'Shoplifting incident at a mall', 'Open', 3, 3),
  (4, 'Assault', '2023-04-05', 'Latitude: 012.345, Longitude: 678.901', 'Physical assault reported on the street', 'Under Investigation', 4, 4),
  (5, 'Burglary', '2023-05-22', 'Latitude: 234.567, Longitude: 890.123', 'Break-in at a residential property', 'Open', 5, 5),
  (6, 'Fraud', '2023-06-15', 'Latitude: 567.890, Longitude: 123.456', 'Financial fraud case under review', 'Draft', 6, 6),
  (7, 'Kidnapping', '2023-07-08', 'Latitude: 890.123, Longitude: 234.567', 'Reported kidnapping incident', 'Open', 7, 7);


INSERT INTO cases (caseID, caseDescription, incidentID)
VALUES
  (1, 'Robbery Investigation', 1),
  (2, 'Homicide Investigation', 2),
  (3, 'Theft Investigation', 3),
  (4, 'Assault Investigation', 4),
  (5, 'Burglary Investigation', 5),
  (6, 'Fraud Investigation', 6),
  (7, 'Kidnapping Investigation', 7);
  





