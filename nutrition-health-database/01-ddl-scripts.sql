

Drop Table nutrition.FoodCategories;
Drop Table nutrition.OneServing;
Drop Table nutrition.FoodLogEntry;
commit;


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


GRANT SELECT, INSERT, UPDATE, DELETE ON nutrition.FoodCategories TO webuser;
    --commit; --rollback;

    Select * from nutrition.FoodCategories;

    IF OBJECT_ID('nutrition.OneServing', 'U') IS NOT NULL
BEGIN
    DROP TABLE nutrition.OneServing;
END;

CREATE TABLE nutrition.OneServing (
    ServingId INT IDENTITY(1,1) PRIMARY KEY,
    FoodItem NVARCHAR(455),
    Amount DECIMAL(5,2),
    Measure NVARCHAR(50),
    Calories SMALLINT,
    NutritionInfoSource NVARCHAR(MAX),
    FoodCategoryId INT, -- Changed to INT to match the primary key type of FoodCategories
    Notes NVARCHAR(MAX),
    StoreSource NVARCHAR(255),
    CONSTRAINT FK_FoodCategory FOREIGN KEY (FoodCategoryId) REFERENCES nutrition.FoodCategories(CategoryID)
);



-- Adding descriptions to the table and columns
EXEC sp_addextendedproperty 
    @name = N'MS_Description', 
    @value = N'Table containing nutritional information for one serving of various food items', 
    @level0type = N'SCHEMA', @level0name = nutrition, 
    @level1type = N'TABLE',  @level1name = OneServing;

EXEC sp_addextendedproperty 
    @name = N'MS_Description', 
    @value = N'Unique identifier for each record', 
    @level0type = N'SCHEMA', @level0name = nutrition, 
    @level1type = N'TABLE',  @level1name = OneServing, 
    @level2type = N'COLUMN', @level2name = ServingId;

EXEC sp_addextendedproperty 
    @name = N'MS_Description', 
    @value = N'Name of the food item', 
    @level0type = N'SCHEMA', @level0name = nutrition, 
    @level1type = N'TABLE',  @level1name = OneServing, 
    @level2type = N'COLUMN', @level2name = FoodItem;

EXEC sp_addextendedproperty 
    @name = N'MS_Description', 
    @value = N'Amount of the food item', 
    @level0type = N'SCHEMA', @level0name = nutrition, 
    @level1type = N'TABLE',  @level1name = OneServing, 
    @level2type = N'COLUMN', @level2name = Amount;

EXEC sp_addextendedproperty 
    @name = N'MS_Description', 
    @value = N'Measurement unit for the amount', 
    @level0type = N'SCHEMA', @level0name = nutrition, 
    @level1type = N'TABLE',  @level1name = OneServing, 
    @level2type = N'COLUMN', @level2name = Measure;

EXEC sp_addextendedproperty 
    @name = N'MS_Description', 
    @value = N'Calories in the specified amount of the food item', 
    @level0type = N'SCHEMA', @level0name = nutrition, 
    @level1type = N'TABLE',  @level1name = OneServing, 
    @level2type = N'COLUMN', @level2name = Calories;

EXEC sp_addextendedproperty 
    @name = N'MS_Description', 
    @value = N'Source of the nutritional information', 
    @level0type = N'SCHEMA', @level0name = nutrition, 
    @level1type = N'TABLE',  @level1name = OneServing, 
    @level2type = N'COLUMN', @level2name = NutritionInfoSource;

EXEC sp_addextendedproperty 
    @name = N'MS_Description', 
    @value = N'Category of the food item', 
    @level0type = N'SCHEMA', @level0name = nutrition, 
    @level1type = N'TABLE',  @level1name = OneServing, 
    @level2type = N'COLUMN', @level2name = Category;

EXEC sp_addextendedproperty 
    @name = N'MS_Description', 
    @value = N'Additional notes about the food item', 
    @level0type = N'SCHEMA', @level0name = nutrition, 
    @level1type = N'TABLE',  @level1name = OneServing, 
    @level2type = N'COLUMN', @level2name = Notes;

EXEC sp_addextendedproperty 
    @name = N'MS_Description', 
    @value = N'Source store of the food item', 
    @level0type = N'SCHEMA', @level0name = nutrition, 
    @level1type = N'TABLE',  @level1name = OneServing, 
    @level2type = N'COLUMN', @level2name = StoreSource;

GRANT SELECT, INSERT, UPDATE, DELETE ON nutrition.OneServing TO webuser;



CREATE TABLE nutrition.FoodLogEntry (
    LogEntryId INT PRIMARY KEY IDENTITY(1,1),
    ConsumptionTime DATETIME,
    FoodEntry NVARCHAR(400),
    Servings INT,
    Calories INT,
    Notes NVARCHAR(MAX)
);

GRANT SELECT, INSERT, UPDATE, DELETE ON nutrition.FoodLogEntry TO webuser;

EXEC sp_addextendedproperty 
    @name = N'MS_Description', 
    @value = N'Unique identifier for each food log entry', 
    @level0type = N'SCHEMA', @level0name = 'nutrition', 
    @level1type = N'TABLE',  @level1name = 'FoodLogEntry', 
    @level2type = N'COLUMN', @level2name = 'LogEntryId';

EXEC sp_addextendedproperty 
    @name = N'MS_Description', 
    @value = N'The time when the food was consumed', 
    @level0type = N'SCHEMA', @level0name = 'nutrition', 
    @level1type = N'TABLE',  @level1name = 'FoodLogEntry', 
    @level2type = N'COLUMN', @level2name = 'ConsumptionTime';

EXEC sp_addextendedproperty 
    @name = N'MS_Description', 
    @value = N'The name or description of the food item', 
    @level0type = N'SCHEMA', @level0name = 'nutrition', 
    @level1type = N'TABLE',  @level1name = 'FoodLogEntry', 
    @level2type = N'COLUMN', @level2name = 'FoodEntry';

EXEC sp_addextendedproperty 
    @name = N'MS_Description', 
    @value = N'The number of servings consumed', 
    @level0type = N'SCHEMA', @level0name = 'nutrition', 
    @level1type = N'TABLE',  @level1name = 'FoodLogEntry', 
    @level2type = N'COLUMN', @level2name = 'Servings';

EXEC sp_addextendedproperty 
    @name = N'MS_Description', 
    @value = N'The total calories consumed', 
    @level0type = N'SCHEMA', @level0name = 'nutrition', 
    @level1type = N'TABLE',  @level1name = 'FoodLogEntry', 
    @level2type = N'COLUMN', @level2name = 'Calories';

EXEC sp_addextendedproperty 
    @name = N'MS_Description', 
    @value = N'Additional notes about the food entry', 
    @level0type = N'SCHEMA', @level0name = 'nutrition', 
    @level1type = N'TABLE',  @level1name = 'FoodLogEntry', 
    @level2type = N'COLUMN', @level2name = 'Notes';

commit;