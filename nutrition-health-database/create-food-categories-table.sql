IF OBJECT_ID('nutrition.FoodCategories', 'U') IS NOT NULL
    DROP TABLE nutrition.FoodCategories;

CREATE TABLE nutrition.FoodCategories (
    CategoryID INT PRIMARY KEY IDENTITY(1,1),
    CategoryName NVARCHAR(50) NOT NULL,
    CategoryDescription NVARCHAR(MAX) NULL
);

INSERT INTO nutrition.FoodCategories (CategoryName, CategoryDescription)
VALUES 
    ('None',null),
    ('Protein', null),
    ('Starch', 'This is a special category I made up becuase we are trying to limit our starches as much as possible.  There are some vegetables that are in the (starchy vegetable) category that we are trying to stay away from'),
    ('Vegetable', null),
    ('Fruit', null),
    ('Junk_Food', null);

    
GRANT SELECT, INSERT, UPDATE, DELETE ON nutrition.FoodCategories TO webuser;


-- Add description to the table
EXEC sys.sp_addextendedproperty 
    @name = N'MS_Description', 
    @value = N'Table storing different food categories for nutritional information', 
    @level0type = N'SCHEMA', @level0name = 'nutrition', 
    @level1type = N'TABLE',  @level1name = 'FoodCategories';

-- Add description to CategoryID column
EXEC sys.sp_addextendedproperty 
    @name = N'MS_Description', 
    @value = N'Unique identifier for each food category, auto-increments starting from 1', 
    @level0type = N'SCHEMA', @level0name = 'nutrition', 
    @level1type = N'TABLE',  @level1name = 'FoodCategories', 
    @level2type = N'COLUMN', @level2name = 'CategoryID';

-- Add description to CategoryName column
EXEC sys.sp_addextendedproperty 
    @name = N'MS_Description', 
    @value = N'Name of the food category, cannot be null, maximum length of 50 characters', 
    @level0type = N'SCHEMA', @level0name = 'nutrition', 
    @level1type = N'TABLE',  @level1name = 'FoodCategories', 
    @level2type = N'COLUMN', @level2name = 'CategoryName';

    EXEC sys.sp_addextendedproperty 
    @name = N'MS_Description', 
    @value = N'Name of the food category, cannot be null, maximum length of 50 characters', 
    @level0type = N'SCHEMA', @level0name = 'nutrition', 
    @level1type = N'TABLE',  @level1name = 'FoodCategories', 
    @level2type = N'COLUMN', @level2name = 'CategoryDescription';


    --commit; --rollback;

    Select * from nutrition.FoodCategories;