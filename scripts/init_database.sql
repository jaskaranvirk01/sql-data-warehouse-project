-- Create Database DataWarehouse
DELIMITER $$
IF EXISTS (SELECT 1 from sys.databases WHERE name = 'DataWarehouse')
BEGIN 
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;

DELIMITER $$

USE DataWarehouse;


-- Define layer Schemas
CREATE SCHEMA bronze;
CREATE SCHEMA silver;
CREATE SCHEMA gold;
