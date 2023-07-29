-- Create a database named 'KALBE' and use it
CREATE DATABASE KALBE;
USE KALBE;

-- Create a table named 'Inventory'
CREATE TABLE Inventory (
	Item_code INT PRIMARY KEY NOT NULL,
	Item_name VARCHAR(100),
    Item_price DECIMAL(10,2),
    Item_total INT,
);

-- Insert records into the Inventory table 
INSERT INTO Inventory (Item_code, Item_name, Item_price, Item_total)
VALUES 
    (2341, 'Promag Tablet', 3000, 100),
    (2342, 'Hydro Coco 250ML', 7000, 20),
    (2343, 'Nutrive Benecol 100ML', 20000, 30),
    (2344, 'Blackmores Vit C 500Mg', 95000, 45),
    (2345, 'Entrasol Gold 370G', 90000, 120); 

-- Show item_name that has the highest number in Item_total
SELECT Item_name
FROM Inventory
WHERE Item_total = (
	SELECT MAX(Item_total) FROM Inventory
);

-- Update the item price of the output of question bullet
UPDATE Inventory
SET Item_price = 7000
WHERE Item_total = (
    SELECT MAX(Item_total) FROM Inventory
);

-- What will happen if we insert another Item_name with Item_code of 2343 into the table
INSERT INTO Inventory (Item_code, Item_name, Item_price, Item_total)
VALUES (2343, 'Entrostop Tablet', 9000, 20);

-- Delete the Item_name that has the lowest number of Item_total
DELETE FROM Inventory 
WHERE Item_total = (
    SELECT MIN(Item_total) FROM Inventory
);