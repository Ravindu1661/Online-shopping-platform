package com.eshopper.service;

import com.eshopper.model.Product;
import com.eshopper.util.dbConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProductService {

    private Connection getConnection() throws SQLException {
        return dbConnection.getConnection();
    }


    // Get all products
    public List<Product> getAllProducts() {
        List<Product> products = new ArrayList<>();
        String sql = "SELECT * FROM product";

        try (Connection conn = getConnection();
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(sql)) {

            while (rs.next()) {
                Product product = new Product();
                product.setId(rs.getInt("id"));
                product.setTitle(rs.getString("title"));
                product.setDescription(rs.getString("description"));
                product.setPrice(rs.getDouble("price"));
                product.setOriginalPrice(rs.getDouble("originalPrice"));
                product.setFile_name(rs.getString("file_name"));

                products.add(product);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return products;
    }

    // Get product by ID
    public Product getProductById(int id) {
        String sql = "SELECT * FROM product WHERE id = ?";
        Product product = null;

        try (Connection conn = getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {

            pstmt.setInt(1, id);
            ResultSet rs = pstmt.executeQuery();

            if (rs.next()) {
                product = new Product();
                product.setId(rs.getInt("id"));
                product.setTitle(rs.getString("title"));
                product.setDescription(rs.getString("description"));
                product.setPrice(rs.getDouble("price"));
                product.setOriginalPrice(rs.getDouble("originalPrice"));
                product.setFile_name(rs.getString("file_name"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return product;
    }

    // Insert new product
    public boolean insertProduct(Product product) {
        String sql = "INSERT INTO product (title, description, price, originalPrice, file_name) VALUES (?, ?, ?, ?, ?)";

        try (Connection conn = getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {

            pstmt.setString(1, product.getTitle());
            pstmt.setString(2, product.getDescription());
            pstmt.setDouble(3, product.getPrice());
            pstmt.setDouble(4, product.getOriginalPrice());
            pstmt.setString(5, product.getFile_name());

            int rows = pstmt.executeUpdate();
            return rows > 0;

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    // Update product
    public boolean updateProduct(Product product) {
        String sql = "UPDATE product SET title = ?, description = ?, price = ?, originalPrice = ?, file_name = ? WHERE id = ?";

        try (Connection conn = getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {

            pstmt.setString(1, product.getTitle());
            pstmt.setString(2, product.getDescription());
            pstmt.setDouble(3, product.getPrice());
            pstmt.setDouble(4, product.getOriginalPrice());
            pstmt.setString(5, product.getFile_name());
            pstmt.setInt(6, product.getId());

            int rows = pstmt.executeUpdate();
            return rows > 0;

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    // Delete product by ID
    public boolean deleteProduct(int id) {
        String sql = "DELETE FROM product WHERE id = ?";

        try (Connection conn = getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {

            pstmt.setInt(1, id);
            int rows = pstmt.executeUpdate();
            return rows > 0;

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
}
