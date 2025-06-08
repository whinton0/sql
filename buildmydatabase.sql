
CREATE DATABASE IF NOT EXISTS mydatabase DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE mydatabase;

CREATE TABLE CustomerContact (
    customer_id INT PRIMARY KEY,
    salutation VARCHAR(20),
    first_name VARCHAR(50),
    middle_name VARCHAR(50),
    last_name VARCHAR(50),
    suffix VARCHAR(10),
    email_address VARCHAR(100),
    cell_phone VARCHAR(20),
    street_address VARCHAR(100),
    city VARCHAR(50),
    state VARCHAR(50),
    zip VARCHAR(15),
    birthdate DATE
);

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    age INT,
    gender VARCHAR(50),
    marital_status VARCHAR(50),
    household_size INT,
    children_count INT,
    home_ownership VARCHAR(50),
    income_range VARCHAR(50),
    FOREIGN KEY (customer_id) REFERENCES CustomerContact(customer_id)
);

CREATE TABLE SurveyResponses (
    response_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    visit_frequency INT,
    avg_visit_duration INT,
    plans_viewed_last_visit INT,
    comparison_method INT,
    customer_tenure INT,
    satisfaction_overall INT,
    satisfaction_website INT,
    value_for_money INT,
    recommend_score INT,
    contacted_support BOOLEAN,
    support_satisfaction INT,
    favorite_aspect TEXT,
    improvement_suggestions TEXT,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);
