

/*
To get column information for a specific table in SQL Server, 
you can query the INFORMATION_SCHEMA.COLUMNS view. Here is the SQL query to 
get column information for the nutrition.OneServing table:
*/


Declare @TableSchema nvarchar(40);
Declare @TableName nvarchar(40);

SET @TableSchema = 'nutrition';
SET @TableName = 'OneServing';

SELECT 
    COLUMN_NAME,
    DATA_TYPE,
    CHARACTER_MAXIMUM_LENGTH,
    IS_NULLABLE,
    COLUMN_DEFAULT
FROM 
    INFORMATION_SCHEMA.COLUMNS
WHERE 
    TABLE_SCHEMA = @TableSchema AND 
    TABLE_NAME = @TableName;