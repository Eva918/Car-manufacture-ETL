-- Create the CarManufacturers table
CREATE TABLE CarManufacturers (
    ManufacturerID int(11), 
    Name VARCHAR(255) NOT NULL,
    HeadquartersAddress VARCHAR(255),
    ContactNumber VARCHAR(20),
    Website VARCHAR(255)
);

CREATE TABLE CarModels (
    ModelID INT(11),
    ModelName VARCHAR(100) NOT NULL,
    ProductionYear INT,
    EngineType VARCHAR(50),
    Price int(10)
  
);

-- Create the CarDealerships table
CREATE TABLE CarDealerships (
    DealershipID int(11),
    Name VARCHAR(255) NOT NULL,
    Address VARCHAR(255),
    ContactNumber VARCHAR(20),
    Email VARCHAR(255)
   
);

-- Create the CarInventory table
CREATE TABLE CarInventory (
    InventoryID INT(11),
    Color VARCHAR(50),
    Quantity INT
);


-- Create the CarSales table with ManufacturerID, ModelID, DealershipID, and InventoryID
CREATE TABLE `car_sales` (
  `SaleID` int(20) NOT NULL,
  `SaleDate` date NOT NULL,
  `TotalAmount` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;





-- Insert 10 sample rows into the CarManufacturers table
INSERT INTO CarManufacturers (ManufacturerID, Name, HeadquartersAddress, ContactNumber, Website)
VALUES
    (1, 'Toyota', '1 Toyota St, Tokyo, Japan', '123-456-7890', 'www.toyota.com'),
    (2, 'Ford', '1 Ford Ave, Detroit, USA', '555-123-4567', 'www.ford.com'),
    (3, 'Honda', '1 Honda Rd, Tokyo, Japan', '987-654-3210', 'www.honda.com'),
    (4, 'Chevrolet', '1 Chevy Blvd, Detroit, USA', '111-222-3333', 'www.chevrolet.com'),
    (5, 'Volkswagen', '1 VW St, Wolfsburg, Germany', '777-888-9999', 'www.vw.com'),
    (6, 'Hyundai', '1 Hyundai Rd, Seoul, South Korea', '888-777-6666', 'www.hyundai.com'),
    (7, 'Nissan', '1 Nissan Ave, Yokohama, Japan', '666-555-4444', 'www.nissan.com'),
    (8, 'Mitsubishi', '1 Mitsubishi Rd, Tokyo, Japan', '999-888-7777', 'www.mitsubishi.com'),
    (9, 'Subaru', '1 Subaru St, Tokyo, Japan', '222-333-4444', 'www.subaru.com'),
    (10, 'Kia', '1 Kia Rd, Seoul, South Korea', '555-666-7777', 'www.kia.com');

-- Insert 10 sample rows into the CarModels table
INSERT INTO CarModels (ModelID, ModelName, ProductionYear, EngineType, Price)
VALUES
(1, 'Camry', 2023, 'V6', 26000),
(2, 'Corolla', 2023, '4-cylinder', 20000),
(3, 'Mustang', 2023, 'V8', 50000),
(4, 'Explorer', 2023, 'V6', 34500),
(5, 'Civic', 2023, '4-cylinder', 23000),
(6, 'Accord', 2023, 'V6', 28000),
(7, 'Silverado', 2023, 'V8', 40000),
(8, 'Equinox', 2023, '4-cylinder', 29000),
(9, 'Jetta', 2023, '4-cylinder', 22000),
(10, 'Passat', 2023, 'V6', 27000);



-- Insert 10 sample rows into the CarInventory table
INSERT INTO CarInventory (InventoryID, Color, Quantity)
VALUES
    (1,'Red', 10),
    (2,'Blue', 5),
    (3,'Silver', 8),
    (4,'White', 12),
    (5,'Black', 15),
    (6,'Red', 7),
    (7,'Blue', 9),
    (8,'Black', 11),
    (9,'White', 10),
    (10,'Silver', 6);

-- Insert 10 sample rows into the CarDealerships table
INSERT INTO CarDealerships (DealershipID, Name, Address, ContactNumber, Email)
VALUES
    (1, 'Cityville Toyota', '123 Main St, Cityville, USA', '111-222-3333', 'info@cityvilletoyota.com'),
    (2, 'Townsville Ford', '456 Elm St, Townsville, USA', '444-555-6666', 'info@townsvilleford.com'),
    (3, 'Tokyo Honda', '1 Honda Rd, Tokyo, Japan', '987-654-3210', 'info@tokyohonda.com'),
    (4, 'Detroit Chevrolet', '1 Chevy Blvd, Detroit, USA', '111-222-3333', 'info@detroitchvrolet.com'),
    (5, 'Wolfsburg VW', '1 VW St, Wolfsburg, Germany', '777-888-9999', 'info@wolfsburgvw.com'),
    (6, 'Seoul Hyundai', '1 Hyundai Rd, Seoul, South Korea', '888-777-6666', 'info@seoulhyundai.com'),
    (7, 'Yokohama Nissan', '1 Nissan Ave, Yokohama, Japan', '666-555-4444', 'info@yokohamanissan.com'),
    (8, 'Tokyo Mitsubishi', '1 Mitsubishi Rd, Tokyo, Japan', '999-888-7777', 'info@tokyomitsubishi.com'),
    (9, 'Tokyo Subaru', '1 Subaru St, Tokyo, Japan', '222-333-4444', 'info@tokyosubaru.com'),
    (10, 'Seoul Kia', '1 Kia Rd, Seoul, South Korea', '555-666-7777', 'info@seoulkia.com');

	--
-- Dumping data for table `car_sales`
--

INSERT INTO `car_sales` (`SaleID`, `SaleDate`, `TotalAmount`) VALUES
(1, '2023-01-15', 26000),
(2, '2023-01-20', 50000),
(3, '2023-02-10', 23000),
(4, '2023-02-18', 35000),
(5, '2023-03-05', 28000),
(6, '2023-03-12', 40000),
(7, '2023-04-03', 19000),
(8, '2023-04-15', 29000),
(9, '2023-05-01', 22000),
(10, '2023-05-10', 27000);





