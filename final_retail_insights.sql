-- Drop and recreate the database
DROP DATABASE IF EXISTS retail_insights_db;
CREATE DATABASE retail_insights_db DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE retail_insights_db;

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100)
);

CREATE TABLE CustomerContact (
    contact_id INT PRIMARY KEY,
    customer_id INT,
    phone VARCHAR(20),
    address VARCHAR(255),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE SurveyResponses (
    response_id INT PRIMARY KEY,
    customer_id INT,
    response_text TEXT,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);

CREATE TABLE Offices (
    office_id INT PRIMARY KEY,
    office_name VARCHAR(100),
    city VARCHAR(100)
);

CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    office_id INT,
    department_id INT,
    name VARCHAR(100),
    commission DECIMAL(5,2),
    FOREIGN KEY (office_id) REFERENCES Offices(office_id),
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    employee_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (employee_id) REFERENCES Employees(employee_id)
);

CREATE TABLE Payments (
    payment_id INT PRIMARY KEY,
    customer_id INT,
    amount DECIMAL(10,2),
    payment_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE ProductLines (
    productline_id INT PRIMARY KEY,
    line_name VARCHAR(100)
);

CREATE TABLE Products (
    product_code VARCHAR(20) PRIMARY KEY,
    product_name VARCHAR(100),
    productline_id INT,
    MSRP DECIMAL(10,2)
);

CREATE TABLE OrderDetails (
    order_detail_id INT PRIMARY KEY,
    order_id INT,
    product_code VARCHAR(20),
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_code) REFERENCES Products(product_code)
);

CREATE TABLE Returns (
    return_id INT PRIMARY KEY,
    order_id INT,
    return_date DATE,
    reason TEXT,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);

CREATE TABLE Shipping (
    shipping_id INT PRIMARY KEY,
    order_id INT,
    carrier_name VARCHAR(100),
    tracking_number VARCHAR(50),
    shipped_date DATE,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);

CREATE TABLE Promotions (
    promo_id INT PRIMARY KEY,
    promo_name VARCHAR(100),
    discount_percent DECIMAL(5,2),
    start_date DATE,
    end_date DATE
);

CREATE TABLE ProductReviews (
    review_id INT PRIMARY KEY,
    product_code VARCHAR(20),
    customer_id INT,
    rating INT CHECK (rating BETWEEN 1 AND 5),
    comment TEXT,
    FOREIGN KEY (product_code) REFERENCES Products(product_code),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE Inventory (
    inventory_id INT PRIMARY KEY,
    product_code VARCHAR(20),
    quantity_in_stock INT,
    warehouse_location VARCHAR(100),
    FOREIGN KEY (product_code) REFERENCES Products(product_code)
);

CREATE TABLE Suppliers (
    supplier_id INT PRIMARY KEY,
    company_name VARCHAR(100),
    contact_name VARCHAR(100),
    phone VARCHAR(20)
);

CREATE TABLE ProductSupplier (
    supplier_id INT PRIMARY KEY,
    product_code VARCHAR(20)
);

CREATE TABLE UserAccounts (
    customer_id INT,
    password_hash VARCHAR(255),
    created_at DATETIME,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE CampaignTracking (
    campaign_id INT PRIMARY KEY,
    campaign_name VARCHAR(100),
    start_date DATE,
    end_date DATE,
    channel VARCHAR(50),
    budget DECIMAL(12,2)
);

CREATE TABLE CustomerSegments (
    segment_id INT PRIMARY KEY,
    segment_name VARCHAR(100),
    criteria TEXT
);

CREATE TABLE CustomerSegmentMap (
    customer_id INT,
    segment_id INT,
    PRIMARY KEY (customer_id, segment_id)
    -- Assumes Customers and Segments already exist
);

CREATE TABLE SessionLogs (
    session_id INT PRIMARY KEY,
    customer_id INT,
    login_timestamp DATETIME,
    logout_timestamp DATETIME,
    device_type VARCHAR(50)
    -- FK to UserAccounts assumed
);

CREATE TABLE ChannelInteractions (
    interaction_id INT PRIMARY KEY,
    customer_id INT,
    interaction_type VARCHAR(50),
    channel VARCHAR(50),
    timestamp DATETIME,
    notes TEXT
    -- FK to Customers assumed
);

CREATE TABLE BI_Metrics (
    metric_id INT PRIMARY KEY,
    metric_name VARCHAR(100),
    metric_value DECIMAL(18,4),
    recorded_at DATETIME,
    notes TEXT
);