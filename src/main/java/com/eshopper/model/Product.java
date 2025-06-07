package com.eshopper.model;

public class Product {

    private int id;
    private String title;
    private String description;      // new field
    private double price;
    private double originalPrice;   // new field
    private String file_name;

    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }
    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }
    public void setDescription(String description) {
        this.description = description;
    }

    public double getPrice() {
        return price;
    }
    public void setPrice(double price) {
        this.price = price;
    }

    public double getOriginalPrice() {
        return originalPrice;
    }
    public void setOriginalPrice(double originalPrice) {
        this.originalPrice = originalPrice;
    }

    public String getFile_name() {
        return file_name;
    }
    public void setFile_name(String file_name) {
        this.file_name = file_name;
    }
}
