-- CREATE SCHEMA nutrition;
-- GO;

-- CREATE SCHEMA recipes;
-- GO;


--     SELECT 
--     name AS SchemaName
-- FROM 
--     sys.schemas;

IF OBJECT_ID('nutrition.OneServing', 'U') IS NOT NULL
BEGIN
    DROP TABLE nutrition.OneServing;
END;

CREATE TABLE nutrition.OneServing (
    ID INT IDENTITY(1,1) PRIMARY KEY,
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




begin tran;
INSERT INTO nutrition.OneServing (FoodItem, Amount, Measure, Calories, NutritionInfoSource, FoodCategoryId, Notes, StoreSource) VALUES
('protein shake', 11, 'oz', 160, NULL, 2, NULL, NULL),
('chick peas', 0.5, 'cup(s)', 120, NULL, 3, NULL, NULL),
('corn', 0.75, 'cup(s)', 60, NULL, 4, NULL, NULL),
('sweet peas', 0.5, 'cup(s)', 60, NULL, 4, NULL, NULL),
('oatmeal', 0.5, 'cup(s)', 150, NULL, 3, NULL, NULL),
('chicken breast', 4, 'oz', 187, 'https://www.nutritionix.com/food/skinless-chicken-breast/4-ounces', 2, NULL, NULL),
('pureed blackberries', 2, 'tsp', 2.6, 'https://www.nutritionix.com/food/blackberries/2-teaspoon', 5, NULL, NULL),
('shrimp', 6, 'oz', 202, 'https://www.nutritionix.com/food/shrimp/4-ounces', 2, NULL, NULL),
('steak', 4, 'oz', 315, 'https://www.nutritionix.com/food/steak/4-ounces', 2, NULL, NULL),
('eggs', 1, 'ea', 72, 'https://www.nutritionix.com/food/eggs/1', 2, NULL, NULL),
('pomegranite juice', 1, 'cup(s)', 134, 'https://www.nutritionix.com/food/pomegranate-juice', 5, NULL, NULL),
('garbanzo beans', 0.5, 'cup(s)', 120, NULL, 3, 'Also known as chickpeas', NULL),
('mini peppers', 1, 'ea', 8.6, 'https://www.nutritionix.com/food/mini-peppers', 4, NULL, NULL),
('sweet potato', 1, 'ea', 100, 'https://www.nutritionix.com/i/vick-family-farms/carolina-gold-sweet-potatoes/5868aa20ec4bdc810ba30f99', 4, 'microwaveable', NULL),
('butter', 1, 'tbsp', 102, 'https://www.nutritionix.com/food/butter', NULL, NULL, NULL),
('snow crab legs', 1, 'ea', 12, 'https://www.nutritionix.com/food/snow-crab-legs', 2, 'This serving size is one leg', NULL),
('jasmine brown rice', 0.25, 'cup(s)', 160, NULL, 3, NULL, NULL),
('royal blend rice', 0.66, 'cup(s)', 140, NULL, 3, NULL, NULL),
('whole grain penne', 2, 'oz', 180, NULL, 3, NULL, NULL),
('misc 1', 1, 'ea', 96, NULL, NULL, NULL, NULL),
('egg whites', 46, 'g', 25, NULL, NULL, NULL, NULL),
('onions & peppers', 1, 'ea', 4, NULL, 4, NULL, NULL),
('lemon juice', 1, 'cup(s)', 40.8, 'https://www.nutritionix.com/food/lemon-juice', NULL, NULL, NULL),
('pistachios', 0.25, 'cup(s)', 160, NULL, NULL, NULL, NULL),
('salad', 3, 'cup(s)', 20, 'https://www.nutritionix.com/food/salad', 4, NULL, NULL),
('imatation snow crab legs', 4, 'ea', 90, NULL, NULL, 'This reverses weight loss', NULL),
('corn dogs', 1, '3a', 450, NULL, NULL, NULL, NULL),
('corn w/ tomatoes', 0.5, 'cup(s)', 45, NULL, NULL, NULL, NULL),
('diced tomatoes', NULL, NULL, 25, NULL, NULL, NULL, NULL),
('marinara sauce', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('lemon water', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('choclate', 1, 'pc', 70, NULL, NULL, NULL, NULL),
('whiting', 4, 'oz', 131, NULL, NULL, NULL, NULL),
('canned turnip greens', 0.5, 'cup(s)', 40, NULL, 4, 'Use as a last resort Nutrition Facts look suspicious', 'Walmart'),
('canned collard greens', 0.5, 'cup(s)', 50, NULL, 4, 'Use as a last resort Nutrition Facts look suspicious', 'Walmart'),
('crushed tomatoes', 0.25, 'cup(s)', 20, NULL, 5, NULL, 'Walmart'),
('chia seeds', 2, 'tbsp', 150, NULL, 2, NULL, 'Walmart'),
('french style green beans', 0.5, 'cup(s)', 20, NULL, 4, NULL, 'Walmart'),
('pepsi zero', 20, 'oz', 0, NULL, NULL, 'Use only one perday', NULL),
('fuji apple', 1, 'medium', 212, 'https://www.nutritionix.com/food/fuji-apple', 5, NULL, NULL),
('fresh collard greens', 0.5, 'cup(s)', 50, NULL, 4, NULL, 'Sams Club'),
('omlet veggies', 0.25, 'cup(s)', 12, NULL, 4, 'Includes Onions, Scallions, diced tomatoes, Peppers', NULL),
('black beans', 0.5, 'Cup', 70, NULL, 3, NULL, NULL),
('lentils', 0.5, 'Cup', 115, NULL, 3, NULL, NULL),
('barley', 0.25, 'Cup', 123, NULL, NULL, NULL, NULL),
('edamame', 100, 'Grams', 121, NULL, NULL, NULL, NULL),
('rolled Oats', 1, 'Cup', 307, NULL, 3, NULL, NULL),
('almonds', 23, 'Each', 164, NULL, 2, NULL, NULL),
('flaxseed', 1, 'Tablespoon', 55, NULL, NULL, NULL, NULL),
('cooked quinoa', 1, 'Cup', 222, NULL, 3, NULL, NULL),
('pistachios', 49, 'Kernels', 159, NULL, 2, NULL, NULL),
('chia seeds', 1, 'Ounce', 138, NULL, 2, NULL, NULL),
('tempeh', 3, 'Ounces', 190, NULL, NULL, NULL, NULL),
('microwave sweet potato', 1, 'ea', 140, NULL, 3, NULL, NULL),
('cabbage', 0.5, 'cup', 17, 'https://www.nutritionix.com/food/green-cabbage', NULL, NULL, NULL),
('spinach', 0.5, 'cup', 41, 'https://www.nutritionix.com/food/spinach', NULL, NULL, NULL),
('cabbage & smoked sausage soup', 16, 'oz', 200, NULL, NULL, NULL, NULL),
('honey crisp apple', 1, 'medium', 95, 'https://www.nutritionix.com/food/honey-crisp-apple', NULL, NULL, NULL),
('biscuit', 1, 'ea (2-1/2" dia)', 212, 'https://www.nutritionix.com/food/bisquix-biscuits', NULL, NULL, NULL),
('diet ginger ale', 20, 'oz', 5, NULL, NULL, NULL, NULL),
('store bought collard greens', 0.5, 'cup(s)', 40, NULL, NULL, NULL, NULL),
('wafflehouse grits', 1, 'serving', 90, 'https://www.bing.com/search?q=waffle+house+grits+calories&cvid=a13dfb27eddf402482578a92e9c51b78&gs_lcrp=EgRlZGdlKgYIABBFGDkyBggAEEUYOTIGCAEQABhAMgYIAhAAGEAyBggDEAAYQDIGCAQQABhAMgYIBRAAGEAyBggGEAAYQDIGCAcQABhAMgYICBAAGEDSAQg1MzkyajBqNKgCCLACAQ&FORM=ANAB01&PC=U531', NULL, NULL, NULL),
('waffle house eggs', 1, '(2 eggs)', 180, 'https://www.bing.com/search?q=waffle+house+eggs+calories&qs=n&form=QBRE&sp=-1&lq=0&pq=waffle+house+eggs+calories&sc=8-26&sk=&cvid=4105B9611F2746FC95FC51873A9BFE9F&ghsh=0&ghacc=0&ghpl=', NULL, NULL, NULL),
('waffle house country ham', 1, 'side order', 210, 'https://www.menuwithnutrition.com/waffle-house-menu-nutrition/country-ham-side-43412/', NULL, NULL, NULL),
('waffle house toast', NULL, '(2 pieces)', 220, 'https://www.bing.com/search?q=waffle+house+toast+calories&qs=n&form=QBRE&sp=-1&lq=0&pq=waffle+house+toast+calories&sc=8-27&sk=&cvid=34B08AEF57854B74B13E72E6069CCED1&ghsh=0&ghacc=0&ghpl=', NULL, NULL, NULL),
('waffle house coffee', 1, 'cup', 5, 'https://www.bing.com/search?q=waffle+house+coffee+calories&qs=n&form=QBRE&sp=-1&lq=0&pq=waffle+house+coffee+calories&sc=8-28&sk=&cvid=05E4529A070C43FFB966991F13394204&ghsh=0&ghacc=0&ghpl=', NULL, NULL, NULL),
('waffle house cheese', 2, 'each', 10, 'https://www.bing.com/search?q=waffle+house+cheese+slice+calories&qs=n&form=QBRE&sp=-1&lq=0&pq=waffle+house+cheese+slice+calories&sc=8-34&sk=&cvid=230DD43AFA1D434D9ACB1063FCF9C2EB&ghsh=0&ghacc=0&ghpl=', NULL, NULL, NULL),
('ground turkey', 4, 'oz', 140, NULL, NULL, NULL, NULL),
('pink lady apple', 1, 'medium', 95, NULL, NULL, NULL, NULL),
('buttery kettle corn', 1, 'bag', 375, NULL, 6, 'popcorn', NULL);






Select FoodItem, Amount, Measure, Calories, NutritionInfoSource, f.CategoryName AS CategoryName, Notes, StoreSource 
from nutrition.OneServing n left join nutrition.FoodCategories f on n.FoodCategoryId = f.CategoryID;



--commit; rollback;