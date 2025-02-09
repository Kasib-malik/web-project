SELECT name FROM sys.databases;
USE busTicketswebdb;
SELECT * FROM Buses;

USE busTicketswebdb;

INSERT INTO Buses (FromCity, ToCity, TravelDate, BusName, Price, AvailableSeats) VALUES
-- February 10
('Lahore', 'Islamabad', '2025-02-10', 'Daewoo Express', 1800, 15),
('Karachi', 'Lahore', '2025-02-10', 'Faisal Movers', 3500, 20),

-- February 11
('Islamabad', 'Multan', '2025-02-11', 'Skyways', 2500, 10),
('Peshawar', 'Lahore', '2025-02-11', 'Bilal Travels', 2200, 12),

-- February 12
('Lahore', 'Faisalabad', '2025-02-12', 'Niazi Express', 1200, 30),
('Multan', 'Karachi', '2025-02-12', 'Waraich Express', 4000, 18),

-- February 13
('Lahore', 'Rawalpindi', '2025-02-13', 'Power International', 2000, 25),
('Quetta', 'Karachi', '2025-02-13', 'Al-Saudia', 3800, 22),

-- February 14
('Lahore', 'Islamabad', '2025-02-14', 'Daewoo Express', 1900, 17),
('Karachi', 'Lahore', '2025-02-14', 'Faisal Movers', 3600, 18),

-- February 15
('Islamabad', 'Multan', '2025-02-15', 'Skyways', 2600, 14),
('Peshawar', 'Lahore', '2025-02-15', 'Bilal Travels', 2300, 10),

-- February 16
('Lahore', 'Faisalabad', '2025-02-16', 'Niazi Express', 1300, 28),
('Multan', 'Karachi', '2025-02-16', 'Waraich Express', 4200, 16),

-- February 17
('Lahore', 'Rawalpindi', '2025-02-17', 'Power International', 2100, 23),
('Quetta', 'Karachi', '2025-02-17', 'Al-Saudia', 3900, 20),

-- February 18
('Lahore', 'Islamabad', '2025-02-18', 'Daewoo Express', 1850, 20),
('Karachi', 'Lahore', '2025-02-18', 'Faisal Movers', 3700, 15),

-- February 19
('Islamabad', 'Multan', '2025-02-19', 'Skyways', 2700, 12),
('Peshawar', 'Lahore', '2025-02-19', 'Bilal Travels', 2250, 14),

-- February 20
('Lahore', 'Faisalabad', '2025-02-20', 'Niazi Express', 1400, 30),
('Multan', 'Karachi', '2025-02-20', 'Waraich Express', 4300, 14),

-- February 21
('Lahore', 'Rawalpindi', '2025-02-21', 'Power International', 2200, 22),
('Quetta', 'Karachi', '2025-02-21', 'Al-Saudia', 3950, 19),

-- February 22
('Lahore', 'Islamabad', '2025-02-22', 'Daewoo Express', 1950, 18),
('Karachi', 'Lahore', '2025-02-22', 'Faisal Movers', 3800, 12);

USE busTicketswebdb;

INSERT INTO Buses (FromCity, ToCity, TravelDate, BusName, Price, AvailableSeats) VALUES
('Lahore', 'Islamabad', '2025-02-10', 'Daewoo Express', 1800, 15),
('Karachi', 'Lahore', '2025-02-12', 'Faisal Movers', 3500, 20),
('Islamabad', 'Multan', '2025-02-15', 'Skyways', 2500, 10),
('Peshawar', 'Lahore', '2025-02-08', 'Bilal Travels', 2200, 12),
('Lahore', 'Faisalabad', '2025-02-11', 'Niazi Express', 1200, 30),
('Multan', 'Karachi', '2025-02-14', 'Waraich Express', 4000, 18),
('Lahore', 'Rawalpindi', '2025-02-13', 'Power International', 2000, 25),
('Quetta', 'Karachi', '2025-02-16', 'Al-Saudia', 3800, 22);
