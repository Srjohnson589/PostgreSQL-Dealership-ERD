-- CREATE TABLE customers (
--     customer_id SERIAL PRIMARY KEY,
--     first_name VARCHAR(50),
--     last_name VARCHAR(50),
--     full_address VARCHAR(200)
-- );

-- CREATE TABLE cars_sale (
--     vin_num VARCHAR(17) PRIMARY KEY,
--     make VARCHAR(20),
--     model VARCHAR(20),
--     year INT,
--     new_or_used VARCHAR(5),
--     origin VARCHAR(50)
-- );

-- CREATE TABLE salespeoples (
--     sp_id SERIAL PRIMARY KEY,
--     first_name VARCHAR(50),
--     last_name VARCHAR(50)
-- );

-- CREATE TABLE mechanics (
--     mech_id SERIAL PRIMARY KEY,
--     first_name VARCHAR(50),
--     last_name VARCHAR(50)
-- );

-- CREATE TABLE invoices (
--     invoice_id SERIAL PRIMARY KEY,
--     vin_num VARCHAR(17),
--     sp_id INT,
--     customer_id INT,
--     amount FLOAT,
--     date_sold DATE,
--     FOREIGN KEY (vin_num) REFERENCES cars_sale(vin_num),
--     FOREIGN KEY (sp_id) REFERENCES salespeoples(sp_id),
--     FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
-- );

-- CREATE TABLE cars_service (
--     vin_num VARCHAR(17) PRIMARY KEY,
--     customer_id INT,
--     make VARCHAR(20),
--     model VARCHAR(20),
--     year INT,
--     FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
-- );

-- CREATE TABLE service_tickets (
--     service_id SERIAL PRIMARY KEY,
--     vin_num VARCHAR(17),
--     date_serviced DATE,
--     amount FLOAT,
--     FOREIGN KEY (vin_num) REFERENCES cars_service(vin_num)
-- );

-- CREATE TABLE service_mechanics (
--     service_id INT,
--     mech_id INT,
--     FOREIGN KEY (service_id) REFERENCES service_tickets(service_id),
--     FOREIGN KEY (mech_id) REFERENCES mechanics(mech_id)
-- );