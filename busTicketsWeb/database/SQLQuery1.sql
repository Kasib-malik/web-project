CREATE DATABASE busTicketswebdb;
USE busTicketswebdb;

CREATE TABLE Users (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    FullName NVARCHAR(100) NOT NULL,
    Email NVARCHAR(100) UNIQUE NOT NULL,
    PasswordHash NVARCHAR(255) NOT NULL
);

CREATE TABLE Buses (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    FromCity NVARCHAR(100) NOT NULL,
    ToCity NVARCHAR(100) NOT NULL,
    TravelDate DATE NOT NULL,
    BusName NVARCHAR(100) NOT NULL,
    Price DECIMAL(10,2) NOT NULL,
    AvailableSeats INT NOT NULL
);

CREATE TABLE Bookings (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    UserId INT FOREIGN KEY REFERENCES Users(Id) ON DELETE CASCADE,
    BusId INT FOREIGN KEY REFERENCES Buses(Id) ON DELETE CASCADE,
    BookingDate DATETIME DEFAULT GETDATE()
);

INSERT INTO Users (FullName, Email, PasswordHash) VALUES
('Admin User', 'admin@example.com', 'admin123'),
('Test User', 'user@example.com', 'user123');

INSERT INTO Buses (FromCity, ToCity, TravelDate, BusName, Price, AvailableSeats) VALUES
('Lahore', 'Islamabad', '2025-02-10', 'Daewoo Express', 1800, 15),
('Karachi', 'Lahore', '2025-02-10', 'Faisal Movers', 3500, 20),
('Islamabad', 'Multan', '2025-02-11', 'Skyways', 2500, 10),
('Peshawar', 'Lahore', '2025-02-11', 'Bilal Travels', 2200, 12),
('Lahore', 'Faisalabad', '2025-02-12', 'Niazi Express', 1200, 30),
('Multan', 'Karachi', '2025-02-12', 'Waraich Express', 4000, 18),
('Lahore', 'Rawalpindi', '2025-02-13', 'Power International', 2000, 25),
('Quetta', 'Karachi', '2025-02-13', 'Al-Saudia', 3800, 22),
('Lahore', 'Islamabad', '2025-02-14', 'Daewoo Express', 1900, 17),
('Karachi', 'Lahore', '2025-02-14', 'Faisal Movers', 3600, 18),
('Islamabad', 'Multan', '2025-02-15', 'Skyways', 2600, 14),
('Peshawar', 'Lahore', '2025-02-15', 'Bilal Travels', 2300, 10),
('Lahore', 'Faisalabad', '2025-02-16', 'Niazi Express', 1300, 28),
('Multan', 'Karachi', '2025-02-16', 'Waraich Express', 4200, 16),
('Lahore', 'Rawalpindi', '2025-02-17', 'Power International', 2100, 23),
('Quetta', 'Karachi', '2025-02-17', 'Al-Saudia', 3900, 20),
('Lahore', 'Islamabad', '2025-02-18', 'Daewoo Express', 1850, 20),
('Karachi', 'Lahore', '2025-02-18', 'Faisal Movers', 3700, 15),
('Islamabad', 'Multan', '2025-02-19', 'Skyways', 2700, 12),
('Peshawar', 'Lahore', '2025-02-19', 'Bilal Travels', 2250, 14),
('Lahore', 'Faisalabad', '2025-02-20', 'Niazi Express', 1400, 30),
('Multan', 'Karachi', '2025-02-20', 'Waraich Express', 4300, 14),
('Lahore', 'Rawalpindi', '2025-02-21', 'Power International', 2200, 22),
('Quetta', 'Karachi', '2025-02-21', 'Al-Saudia', 3950, 19),
('Lahore', 'Islamabad', '2025-02-22', 'Daewoo Express', 1950, 18),
('Karachi', 'Lahore', '2025-02-22', 'Faisal Movers', 3800, 12);

INSERT INTO Bookings (UserId, BusId) VALUES
(1, 1),
(2, 3),
(1, 6),
(2, 9),
(1, 13),
(2, 19),
(1, 25),
(2, 27);

SELECT * FROM Users;
SELECT * FROM Buses;
SELECT * FROM Bookings;

SELECT * FROM Buses WHERE FromCity = 'Lahore' AND ToCity = 'Islamabad' AND TravelDate = '2025-02-10';
