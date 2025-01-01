CREATE SCHEMA nutrition;
GO;

CREATE SCHEMA recipes;
GO;


    SELECT 
    name AS SchemaName
FROM 
    sys.schemas;


CREATE TABLE nutrition.OneServing (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    FoodItem NVARCHAR(455),
    Amount DECIMAL(5,2),
    Measure NVARCHAR(50),
    Calories SMALLINT,
    NutritionInfoSource NVARCHAR(4000),
    Category NVARCHAR(75),
    Notes NVARCHAR(MAX),
    StoreSource NVARCHAR(255)
);

GO;


begin tran;

INSERT INTO nutrition.OneServing (FoodItem, Amount, Measure, Calories, NutritionInfoSource, Category, Notes, StoreSource) VALUES
('protein shake', 11, 'oz', 160, 'Product Label', 'Protein', NULL, NULL),
('chick peas', 0.5, 'cup(s)', 120, 'Product Label', 'Starch', NULL, NULL),
('corn', 0.75, 'cup(s)', 60, 'Product Label', 'Vegetable', NULL, NULL),
('sweet peas', 0.5, 'cup(s)', 60, 'Product Label', 'Vegetable', NULL, NULL),
('oatmeal', 0.5, 'cup(s)', 150, 'nutritionix.com', 'Starch', NULL, NULL),
('chicken breast', 4, 'oz', 187, 'nutritionix.com', 'Protein', NULL, NULL),
('pureed blackberries', 2, 'tsp', 2.6, 'nutritionix.com', 'Fruit', NULL, NULL),
('shrimp', 6, 'oz', 202, 'nutritionix.com', 'Protein', NULL, NULL),
('steak', 4, 'oz', 315, 'nutritionix.com', 'Protein', NULL, NULL),
('eggs', 1, 'ea', 72, 'nutritionix.com', 'Protein', NULL, NULL),
('pomegranite juice', 1, 'cup(s)', 134, 'nutritionix.com', 'Fruit', NULL, NULL),
('garbanzo beans', 0.5, 'cup(s)', 120, 'Product Label', 'Starch', 'Also known as chickpeas', NULL),
('mini peppers', 1, 'ea', 8.6, 'nutritionix.com', 'Vegetable', NULL, NULL),
('sweet potato', 1, 'ea', 100, 'nutritionix.com', 'Vegetable', 'microwaveable', NULL),
('butter', 1, 'tbsp', 102, 'nutritionix.com', NULL, NULL, NULL),
('snow crab legs', 1, 'ea', 12, 'nutritionix.com', 'Protein', 'This serving size is one leg', NULL),
('jasmine brown rice', 0.25, 'cup(s)', 160, 'Product Label', 'Starch', NULL, NULL),
('royal blend rice', 0.66, 'cup(s)', 140, 'Product Label', 'Starch', NULL, NULL),
('whole grain penne', 2, 'oz', 180, 'Product Label', 'Starch', NULL, NULL),
('misc 1', 1, 'ea', 96, NULL, NULL, NULL, NULL),
('egg whites', 46, 'g', 25, 'Product Label', NULL, NULL, NULL),
('onions & peppers', 1, 'ea', 4, NULL, 'Vegetable', NULL, NULL),
('lemon juice', 1, 'cup(s)', 40.8, 'nutritionix.com', NULL, NULL, NULL),
('pistachios', 0.25, 'cup(s)', 160, 'Product Label', NULL, NULL, NULL),
('salad', 3, 'cup(s)', 20, 'nutritionix.com', 'Vegetable', NULL, NULL),
('imatation snow crab legs', 4, 'ea', 90, 'Product Label', NULL, 'This reverses weight loss', NULL),
('corn dogs', 1, '3a', 450, 'Product Label', NULL, NULL, NULL),
('corn w/ tomatoes', 0.5, 'cup(s)', 45, 'Calculated', NULL, NULL, NULL),
('diced tomatoes', NULL, NULL, 25, 'Product Label', NULL, NULL, NULL),
('marinara sauce', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('lemon water', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('chocolate', 1, 'pc', 70, 'Product Label', NULL, NULL, NULL),
('whiting', 4, 'oz', 131, NULL, NULL, NULL, NULL),
('canned turnip greens', 0.5, 'cup(s)', 40, 'Product Label', 'Vegetable', 'Use as a last resort Nutrition Facts look suspicious', 'Walmart'),
('canned collard greens', 0.5, 'cup(s)', 50, 'Product Label', 'Vegetable', 'Use as a last resort Nutrition Facts look suspicious', 'Walmart'),
('crushed tomatoes', 0.25, 'cup(s)', 20, 'Product Label', 'Fruit', NULL, 'Walmart'),
('chia seeds', 2, 'tbsp', 150, 'Product Label', 'Protein', NULL, 'Walmart'),
('french style green beans', 0.5, 'cup(s)', 20, 'Product Label', 'Vegetable', NULL, 'Walmart'),
('pepsi zero', 20, 'oz', 0, 'Product Label', NULL, 'Use only one perday', NULL),
('fuji apple', 1, 'medium', 212, 'nutritionix.com', 'Fruit', NULL, NULL),
('fresh collard greens', 0.5, 'cup(s)', 50, 'Product Label', 'Vegetable', NULL, 'Sams Club'),
('omlet veggies', 0.25, 'cup(s)', 12, NULL, 'Vegetable', 'Includes Onions, Scallions, diced tomatoes, Peppers', NULL),
('black beans', 0.5, 'Cup', 70, NULL, 'Starch', NULL, NULL),
('lentils', 0.5, 'Cup', 115, NULL, 'Starch', NULL, NULL),
('barley', 0.25, 'Cup', 123, NULL, NULL, NULL, NULL),
('edamame', 100, 'Grams', 121, NULL, NULL, NULL, NULL),
('rolled Oats', 1, 'Cup', 307, NULL, 'Starch', NULL, NULL),
('almonds', 23, 'Each', 164, NULL, 'Protein', NULL, NULL),
('flaxseed', 1, 'Tablespoon', 55, NULL, NULL, NULL, NULL),
('cooked quinoa', 1, 'Cup', 222, NULL, 'Starch', NULL, NULL),
('pistachios', 49, 'Kernels', 159, NULL, 'Protein', NULL, NULL),
('chia seeds', 1, 'Ounce', 138, NULL, 'Protein', NULL, NULL),
('tempeh', 3, 'Ounces', 190, NULL, NULL, NULL, NULL),
('microwave sweet potato', 1, 'ea', 140, 'Product Label', 'Starch', NULL, NULL),
('cabbage', 0.5, 'cup', 17, 'nutritionix.com', NULL, NULL, NULL),
('spinach', 0.5, 'cup', 41, 'nutritionix.com', NULL, NULL, NULL),
('cabbage & smoked sausage soup', 16, 'oz', 200, 'guess', NULL, NULL, NULL),
('honey crisp apple', 1, 'medium', 95, 'nutritionix.com', NULL, NULL, NULL),
('biscuit', 1, 'ea (2-1/2" dia)', 212, 'nutritionix.com', NULL, NULL, NULL),
('store bought collard greens', 0.5, 'cup(s)', 40, 'Product Label', NULL, NULL, NULL),
('wafflehouse grits', 1, 'serving', 90, 'Bing Search', NULL, NULL, NULL),
('waffle house eggs', 1, '(2 eggs)', 180, 'Bing Search', NULL, NULL, NULL),
('waffle house country ham', 1, 'side order', 210, 'Menuwithnutrition.com', NULL, NULL, NULL),
('waffle house toast', NULL, '(2 pieces)', 220, 'Bing Search', NULL, NULL, NULL),
('waffle house coffee', 1, 'cup', 5, 'Bing Search', NULL, NULL, NULL),
('waffle house cheese', 2, 'each', 10, 'Bing Search', NULL, NULL, NULL),
('ground turkey', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

GO;



Select FoodItem, Amount, Measure, Calories, NutritionInfoSource, Category, Notes, StoreSource 
from nutrition.OneServing;



--commit; rollback;