-- Create the project_1 database if it doesn't exist
CREATE DATABASE IF NOT EXISTS project_1;

-- Switch to the project_1 database
USE project_1;

-- Create patients table
CREATE TABLE patients (
    patient_id INT auto_increment primary KEY,
    full_name text not null,
    date_of_birth DATE not null,
    address text not null,
    gender VARCHAR(10),
    contact_number VARCHAR(20)
);

-- Create doctors table
CREATE TABLE doctors (
    doctor_id INT auto_increment primary KEY,
    full_name text not null,
    specialty VARCHAR(100),
    contact_number VARCHAR(20),
    room_number VARCHAR(20)
);

-- Create appointments table
CREATE TABLE appointments (
    appointment_id INT auto_increment primary KEY,
    patient_id INT,
    doctor_id INT,
    appointment_date DATE,
    appointment_time TIME,
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES doctors(doctor_id)
);

-- Create medical_records table
CREATE TABLE medical_records (
    record_id INT auto_increment PRIMARY KEY,
    patient_id INT,
    visit_date DATE,
    diagnosis VARCHAR(255),
    treatment_plan VARCHAR(255),
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id)
);

-- Create prescriptions table
CREATE TABLE prescriptions (
    prescription_id INT auto_increment PRIMARY KEY,
    record_id INT,
    medication VARCHAR(255),
    dosage VARCHAR(50),
    instructions TEXT,
    FOREIGN KEY (record_id) REFERENCES medical_records(record_id)
);

-- Create vision_tests table
CREATE TABLE vision_tests (
    test_id INT auto_increment PRIMARY KEY,
    record_id INT,
    test_type VARCHAR(100),
    test_date DATE,
    result VARCHAR(100),
    FOREIGN KEY (record_id) REFERENCES medical_records(record_id)
);

-- Create invoices table
CREATE TABLE invoices (
    invoice_id INT auto_increment PRIMARY KEY,
    appointment_id INT,
    total_amount DECIMAL(10,2),
    date_issued DATE,
    payment_status VARCHAR(20),
    FOREIGN KEY (appointment_id) REFERENCES appointments(appointment_id)
);

-- Create equipment table
CREATE TABLE equipment (
    equipment_id INT auto_increment PRIMARY KEY,
    equipment_name VARCHAR(255),
    purchase_date DATE,
    room_number VARCHAR(20),
    status VARCHAR(20)
);

-- Create inventory table
CREATE TABLE inventory (
    inventory_id INT auto_increment PRIMARY KEY,
    item_name VARCHAR(255),
    quantity INT,
    reorder_level INT,
    last_ordered_date DATE
);

-- Create staff table
CREATE TABLE staff (
    staff_id INT auto_increment PRIMARY KEY,
    full_name VARCHAR(255),
    role VARCHAR(50),
    contact_number VARCHAR(20),
    schedule VARCHAR(255)
);
