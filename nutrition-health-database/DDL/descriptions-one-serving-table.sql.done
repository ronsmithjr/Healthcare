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
    @level2type = N'COLUMN', @level2name = ID;

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