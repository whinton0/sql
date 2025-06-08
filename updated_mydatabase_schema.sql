
-- Use existing database
USE mydatabase;

-- OFFICES table
CREATE TABLE Offices (
    office_code VARCHAR(10) PRIMARY KEY,
    city VARCHAR(50) NOT NULL,
    phone VARCHAR(50) NOT NULL,
    address_line1 VARCHAR(50) NOT NULL,
    address_line2 VARCHAR(50),
    state VARCHAR(50),
    country VARCHAR(50) NOT NULL,
    postal_code VARCHAR(15) NOT NULL,
    territory VARCHAR(10) NOT NULL
);

-- EMPLOYEES table (updated with department and commission fields)
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    last_name VARCHAR(50) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    extension VARCHAR(10) NOT NULL,
    email VARCHAR(100) NOT NULL,
    office_code VARCHAR(10) NOT NULL,
    reports_to INT,
    job_title VARCHAR(50) NOT NULL,
    department VARCHAR(50),
    commission DECIMAL(10,2),
    FOREIGN KEY (office_code) REFERENCES Offices(office_code),
    FOREIGN KEY (reports_to) REFERENCES Employees(employee_id)
);

-- PRODUCTLINES table
CREATE TABLE ProductLines (
    product_line VARCHAR(50) PRIMARY KEY,
    text_description VARCHAR(4000),
    html_description MEDIUMTEXT,
    image MEDIUMBLOB
);

-- PRODUCTS table
CREATE TABLE Products (
    product_code VARCHAR(15) PRIMARY KEY,
    product_name VARCHAR(70) NOT NULL,
    product_line VARCHAR(50) NOT NULL,
    product_scale VARCHAR(10) NOT NULL,
    product_vendor VARCHAR(50) NOT NULL,
    product_description TEXT NOT NULL,
    quantity_in_stock SMALLINT NOT NULL,
    buy_price DECIMAL(10,2) NOT NULL,
    MSRP DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (product_line) REFERENCES ProductLines(product_line)
);

-- ORDERS table (updated with employee_id as foreign key)
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    order_date DATE NOT NULL,
    required_date DATE NOT NULL,
    shipped_date DATE,
    status VARCHAR(15) NOT NULL,
    comments TEXT,
    customer_id INT NOT NULL,
    employee_id INT NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (employee_id) REFERENCES Employees(employee_id)
);

-- ORDERDETAILS table
CREATE TABLE OrderDetails (
    order_id INT NOT NULL,
    product_code VARCHAR(15) NOT NULL,
    quantity_ordered INT NOT NULL,
    price_each DECIMAL(10,2) NOT NULL,
    order_line_number SMALLINT NOT NULL,
    PRIMARY KEY (order_id, product_code),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_code) REFERENCES Products(product_code)
);

-- PAYMENTS table
CREATE TABLE Payments (
    customer_id INT NOT NULL,
    check_number VARCHAR(50) NOT NULL,
    payment_date DATE NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (customer_id, check_number),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);
