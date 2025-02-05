USE busTicketswebdb;

CREATE TABLE Users (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    FullName NVARCHAR(100) NOT NULL,
    Email NVARCHAR(100) UNIQUE NOT NULL,
    PasswordHash NVARCHAR(255) NOT NULL
);

INSERT INTO Users (FullName, Email, PasswordHash) VALUES
('Admin User', 'admin@example.com', 'admin123'),
('Test User', 'user@example.com', 'user123');

CREATE TABLE Buses (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    FromCity NVARCHAR(100) NOT NULL,
    ToCity NVARCHAR(100) NOT NULL,
    TravelDate DATE NOT NULL,
    BusName NVARCHAR(100) NOT NULL,
    Price DECIMAL(10,2) NOT NULL,
    AvailableSeats INT NOT NULL
);

-- Create Bookings Table
CREATE TABLE Bookings (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    UserId INT FOREIGN KEY REFERENCES Users(Id),
    BusId INT FOREIGN KEY REFERENCES Buses(Id),
    BookingDate DATETIME DEFAULT GETDATE()
);

INSERT INTO Buses (FromCity, ToCity, TravelDate, BusName, Price, AvailableSeats) VALUES
('Lahore', 'Islamabad', '2025-02-09', 'Daewoo', 1500, 10),
('Karachi', 'Lahore', '2025-01-31', 'Faisal Movers', 3500, 5),
('Islamabad', 'Multan', '2025-01-30', 'Skyways', 2500, 8);

SELECT * FROM Buses;