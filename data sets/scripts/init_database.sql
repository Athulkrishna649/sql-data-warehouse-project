/*
=====================
Creating Database and Schemas
======================
Script Purpose ;
		This script creates a new database called 'DataWarehouse' after checking if it already exists.
		If the data base exists it is dropped  and recreated
		Additionally the scripts setup three schemas  with in the database ; 'bronze' 'silver', and 'gold'.
WARNING ;
		Running this script will drop the entire 'DataWarehouse'database if already exist.
		All data in the data base will be permenantly deleted. Proceed with caution
		and ensure yu have proper backup before running this script 
*/

	USE master ;
	GO


-- Drop and recreate the 'DataWarehouse' database--

IF EXISTS ( SELECT 1 FROM sys.databases WHERE  name ='DataWarehouse')
BEGIN 
		ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE ;
		DROP DATABASE DataWarehouse;
		END;
		GO


	-- Createing  the 'DataWarehouse' database


CREATE DATABASE DataWarehouse ;
GO


USE  DataWarehouse;
GO
--Creating  Schemas--

CREATE SCHEMA bronze;
GO


CREATE SCHEMA  silver;
GO


CREATE SCHEMA   gold;
GO
