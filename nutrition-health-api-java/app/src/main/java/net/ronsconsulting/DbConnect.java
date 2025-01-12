package net.ronsconsulting;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

public class DbConnect {
    private static final String CONFIG_FILE = "/config.properties";
    private static String URL;
    private static String USER;
    private static String PASSWORD;

    static void GetConnectionDetails() {
        try (InputStream input = DbConnect.class.getResourceAsStream(CONFIG_FILE)) {
            Properties prop = new Properties();
            if (input == null) {
                System.out.println("Sorry, unable to find " + CONFIG_FILE);
                return;
            }
            prop.load(input);
            URL = prop.getProperty("db.url");
            USER = prop.getProperty("db.user");
            String encryptedPassword = prop.getProperty("db.password");
            PASSWORD = EncryptionUtil.decrypt(encryptedPassword);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    private Connection connect() throws SQLException {
        GetConnectionDetails();
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }

    // CRUD methods for nutrition.FoodCategories
    public void addFoodCategory(String categoryName, String categoryDescription) throws SQLException {
        String query = "INSERT INTO nutrition.FoodCategories (CategoryName, CategoryDescription) VALUES (?, ?)";
        try (Connection conn = connect(); PreparedStatement pstmt = conn.prepareStatement(query)) {
            pstmt.setString(1, categoryName);
            pstmt.setString(2, categoryDescription);
            pstmt.executeUpdate();
        }
    }

    public ResultSet getFoodCategories() throws SQLException {
        String query = "SELECT * FROM nutrition.FoodCategories";
        Connection conn = connect();
        return conn.createStatement().executeQuery(query);
    }

    public void updateFoodCategory(int id, String categoryName, String categoryDescription) throws SQLException {
        String query = "UPDATE nutrition.FoodCategories SET CategoryName = ?, CategoryDescription = ? WHERE Id = ?";
        try (Connection conn = connect(); PreparedStatement pstmt = conn.prepareStatement(query)) {
            pstmt.setString(1, categoryName);
            pstmt.setString(2, categoryDescription);
            pstmt.setInt(3, id);
            pstmt.executeUpdate();
        }
    }

    public void deleteFoodCategory(int id) throws SQLException {
        String query = "DELETE FROM nutrition.FoodCategories WHERE Id = ?";
        try (Connection conn = connect(); PreparedStatement pstmt = conn.prepareStatement(query)) {
            pstmt.setInt(1, id);
            pstmt.executeUpdate();
        }
    }

    // CRUD methods for nutrition.FoodLogEntry
    public void addFoodLogEntry(String consumptionTime, String foodEntry, int servings, int calories, String notes) throws SQLException {
        String query = "INSERT INTO nutrition.FoodLogEntry (ConsumptionTime, FoodEntry, Servings, Calories, Notes) VALUES (?, ?, ?, ?, ?)";
        try (Connection conn = connect(); PreparedStatement pstmt = conn.prepareStatement(query)) {
            pstmt.setString(1, consumptionTime);
            pstmt.setString(2, foodEntry);
            pstmt.setInt(3, servings);
            pstmt.setInt(4, calories);
            pstmt.setString(5, notes);
            pstmt.executeUpdate();
        }
    }

    public ResultSet getFoodLogEntries() throws SQLException {
        String query = "SELECT * FROM nutrition.FoodLogEntry";
        Connection conn = connect();
        return conn.createStatement().executeQuery(query);
    }

    public void updateFoodLogEntry(int id, String consumptionTime, String foodEntry, int servings, int calories, String notes) throws SQLException {
        String query = "UPDATE nutrition.FoodLogEntry SET ConsumptionTime = ?, FoodEntry = ?, Servings = ?, Calories = ?, Notes = ? WHERE Id = ?";
        try (Connection conn = connect(); PreparedStatement pstmt = conn.prepareStatement(query)) {
            pstmt.setString(1, consumptionTime);
            pstmt.setString(2, foodEntry);
            pstmt.setInt(3, servings);
            pstmt.setInt(4, calories);
            pstmt.setString(5, notes);
            pstmt.setInt(6, id);
            pstmt.executeUpdate();
        }
    }

    public void deleteFoodLogEntry(int id) throws SQLException {
        String query = "DELETE FROM nutrition.FoodLogEntry WHERE Id = ?";
        try (Connection conn = connect(); PreparedStatement pstmt = conn.prepareStatement(query)) {
            pstmt.setInt(1, id);
            pstmt.executeUpdate();
        }
    }

    // CRUD methods for nutrition.OneServing
    public void addOneServing(String foodItem, String amount, String measure, String nutritionInfoSource, int foodCategoryId, String notes, String storeSource) throws SQLException {
        String query = "INSERT INTO nutrition.OneServing (FoodItem, Amount, Measure, NutritionInfoSource, FoodCategoryId, Notes, StoreSource) VALUES (?, ?, ?, ?, ?, ?, ?)";
        try (Connection conn = connect(); PreparedStatement pstmt = conn.prepareStatement(query)) {
            pstmt.setString(1, foodItem);
            pstmt.setString(2, amount);
            pstmt.setString(3, measure);
            pstmt.setString(4, nutritionInfoSource);
            pstmt.setInt(5, foodCategoryId);
            pstmt.setString(6, notes);
            pstmt.setString(7, storeSource);
            pstmt.executeUpdate();
        }
    }

    public ResultSet getOneServings() throws SQLException {
        String query = "SELECT * FROM nutrition.OneServing";
        Connection conn = connect();
        return conn.createStatement().executeQuery(query);
    }

    public void updateOneServing(int id, String foodItem, String amount, String measure, String nutritionInfoSource, int foodCategoryId, String notes, String storeSource) throws SQLException {
        String query = "UPDATE nutrition.OneServing SET FoodItem = ?, Amount = ?, Measure = ?, NutritionInfoSource = ?, FoodCategoryId = ?, Notes = ?, StoreSource = ? WHERE Id = ?";
        try (Connection conn = connect(); PreparedStatement pstmt = conn.prepareStatement(query)) {
            pstmt.setString(1, foodItem);
            pstmt.setString(2, amount);
            pstmt.setString(3, measure);
            pstmt.setString(4, nutritionInfoSource);
            pstmt.setInt(5, foodCategoryId);
            pstmt.setString(6, notes);
            pstmt.setString(7, storeSource);
            pstmt.setInt(8, id);
            pstmt.executeUpdate();
        }
    }

    public void deleteOneServing(int id) throws SQLException {
        String query = "DELETE FROM nutrition.OneServing WHERE Id = ?";
        try (Connection conn = connect(); PreparedStatement pstmt = conn.prepareStatement(query)) {
            pstmt.setInt(1, id);
            pstmt.executeUpdate();
        }
    }
}