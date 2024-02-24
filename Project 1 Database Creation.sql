
-- Create the project_1 database if it doesn't exist
CREATE DATABASE IF NOT EXISTS project_1;

-- Switch to the project_1 database
USE project_1;

-- Create patients table
CREATE TABLE patients (
    patient_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name TEXT NOT NULL,
    date_of_birth DATE NOT NULL,
    address TEXT NOT NULL,
    gender VARCHAR(255) NOT NULL,
    insurance_provider text not null,
    contact_number VARCHAR(255) NOT NULL
);

-- Create providers table
CREATE TABLE providers (
    provider_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name TEXT NOT NULL,
    specialty VARCHAR(255) NOT NULL,
    contact_number VARCHAR(255) NOT NULL,
    room_number VARCHAR(255) NOT NULL
);

-- Create appointments table
CREATE TABLE appointments (
    appointment_id INT AUTO_INCREMENT PRIMARY KEY,
    patient_id INT NOT NULL,
    doctor_id INT NOT NULL,
    facility INT NOT NULL,
    visit_id INT,
    appointment_date DATE NOT NULL,
    appointment_time TIME NOT NULL,
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
    FOREIGN KEY (provider_id) REFERENCES providers(provider_id)
);

-- Create medical_records table
CREATE TABLE medical_records (
    record_id INT AUTO_INCREMENT PRIMARY KEY,
    patient_id INT NOT NULL,
    visit_date DATE NOT NULL,
    discharge_date DATE NOT NULL, 
    symptoms TEXT,
    diagnosis VARCHAR(255) NOT NULL,
    treatment_plan TEXT NOT NULL,
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id)
);

-- Create prescriptions table
CREATE TABLE prescriptions (
    prescription_id INT AUTO_INCREMENT PRIMARY KEY,
    record_id INT NOT NULL,
    medication VARCHAR(255) NOT NULL,
    dosage VARCHAR(255) NOT NULL,
    instructions TEXT NOT NULL,
    FOREIGN KEY (record_id) REFERENCES medical_records(record_id)
);

-- Create vision_tests table
CREATE TABLE vision_tests (
    test_id INT AUTO_INCREMENT PRIMARY KEY,
    record_id INT NOT NULL,
    test_type VARCHAR(255) NOT NULL,
    test_date DATE NOT NULL,
    result VARCHAR(255) NOT NULL,
    FOREIGN KEY (record_id) REFERENCES medical_records(record_id)
);

-- Create invoices table
CREATE TABLE invoices (
    invoice_id INT AUTO_INCREMENT PRIMARY KEY,
    appointment_id INT NOT NULL,
    total_amount DECIMAL(10,2) NOT NULL,
    customer_portion DECIMAL(10,2),
    paid_by_customer DECIMAL(10,2),
    insurance_portion DECIMAL(10,2),
    paid_by_insurance DECIMAL(10,2),
    date_issued DATE NOT NULL,
    FOREIGN KEY (appointment_id) REFERENCES appointments(appointment_id)
);

-- Create equipment table
CREATE TABLE equipment (
    equipment_id INT AUTO_INCREMENT PRIMARY KEY,
    equipment_name VARCHAR(255) NOT NULL,
    purchase_date DATE NOT NULL,
    room_number VARCHAR(255) NOT NULL,
    status VARCHAR(255) NOT NULL
);

-- Create inventory table
CREATE TABLE inventory (
    inventory_id INT AUTO_INCREMENT PRIMARY KEY,
    item_name VARCHAR(255) NOT NULL,
    quantity INT NOT NULL,
    reorder_level INT NOT NULL,
    last_ordered_date DATE NOT NULL
);

-- Create staff table
CREATE TABLE staff (
    staff_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(255) NOT NULL,
    role VARCHAR(255) NOT NULL,
    contact_number VARCHAR(255) NOT NULL,
    schedule VARCHAR(255) NOT NULL
);
