-- Create a new database for testing
CREATE DATABASE testDB;
USE testDB;

-- Create a table to store customer information
CREATE TABLE Customers
(
    CustomerID INT PRIMARY KEY,
    -- Primary key automatically creates a clustered index
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Email NVARCHAR(100),
    Country NVARCHAR(50),
    DateOfBirth DATE
);

-- Insert sample data into the Customers table
INSERT INTO Customers
    (CustomerID, FirstName, LastName, Email, Country, DateOfBirth)
VALUES
    (1, 'John', 'Doe', 'john.doe@example.com', 'USA', '1985-04-12'),
    (2, 'Jane', 'Smith', 'jane.smith@example.com', 'Canada', '1990-07-23'),
    (3, 'Michael', 'Johnson', 'michael.johnson@example.com', 'UK', '1978-11-30'),
    (4, 'Emily', 'Davis', 'emily.davis@example.com', 'Australia', '1992-03-15'),
    (5, 'Daniel', 'Brown', 'daniel.brown@example.com', 'USA', '1982-08-21');

-- Example 1: Creating a non-clustered index on the Email column
CREATE NONCLUSTERED INDEX idx_Email ON Customers(Email);

-- Query 1: Retrieving a customer by email without an index
-- This would be slower without the index because it would require a full table scan
SELECT *
FROM Customers
WHERE Email = 'john.doe@example.com';

-- Query 2: Retrieving a customer by email with the non-clustered index
-- The query should now be faster because of the index on the Email column
SELECT *
FROM Customers
WHERE Email = 'jane.smith@example.com';

-- Explanation:
-- A non-clustered index allows the database to quickly locate the row without scanning the entire table.
-- It works like an index in a book, pointing to the exact row where the data can be found.

-- Example 2: Creating a composite non-clustered index on the Country and LastName columns
CREATE NONCLUSTERED INDEX idx_Country_LastName ON Customers(Country, LastName);

-- Query 3: Retrieving customers from a specific country with a specific last name
-- The query uses the composite index to quickly find matching rows
SELECT *
FROM Customers
WHERE Country = 'USA' AND LastName = 'Brown';

-- Explanation:
-- Composite indexes are useful when you frequently search or filter by multiple columns together.
-- The order of columns in the index matters. The query optimizer uses the leftmost columns first.

-- Example 3: Covering Index (An index that contains all columns needed by the query)
-- Creating a covering index for a query that retrieves only Email and FirstName
CREATE NONCLUSTERED INDEX idx_Covering_Email_FirstName ON Customers(Email, FirstName);

-- Query 4: Retrieving only the Email and FirstName of a customer
-- This query is fully covered by the index, meaning it doesn't need to access the table at all
SELECT Email, FirstName
FROM Customers
WHERE Email = 'emily.davis@example.com';

-- Explanation:
-- A covering index includes all the columns required by a query, so the database engine can retrieve the data directly from the index.
-- This makes the query execution faster as it avoids accessing the table data.

-- Example 4: Understanding Execution Plan
-- View the execution plan to see how indexes are used
-- In SQL Server Management Studio (SSMS), click on "Include Actual Execution Plan" before running the query
SELECT *
FROM Customers
WHERE Country = 'Canada';

-- Explanation:
-- The execution plan shows how the database engine retrieves data and which indexes are used.
-- Look for "Index Seek" (which is fast) vs "Index Scan" or "Table Scan" (which is slower).

-- Example 5: Dropping an Index
-- If an index is no longer needed, you can drop it to save space and improve write performance
DROP INDEX idx_Country_LastName ON Customers;

-- Learning Tip:
-- Indexes improve read performance but can slow down write operations (INSERT, UPDATE, DELETE) because the indexes must be maintained.
-- It's essential to find a balance between read and write performance based on your application's needs.

-- Additional Tips:
-- Index Selectivity: Choose columns with high selectivity (few duplicates) for indexing to maximize performance.
-- Avoid over-indexing: Too many indexes can degrade performance, especially on write-heavy tables.
-- Regularly monitor and review indexes to ensure they are still beneficial as your data and queries evolve.
