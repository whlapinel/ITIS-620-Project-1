USE project_1;

-- Insert data into patients table
INSERT INTO patients (full_name, date_of_birth, address, gender, insurance_provider, contact_number) VALUES
('John Doe', '1980-04-01', '123 Elm St, Springfield', 'Male', 'HealthPlus Insurances', '555-0101'),
('Jane Smith', '1992-08-12', '456 Maple Ave, Hill Valley', 'Female', 'Wellcare', '555-0102'),
('Alex Johnson', '1976-11-23', '789 Oak St, Twin Peaks', 'Other', 'Prime Health Covers', '555-0103'),
('Chris Brown', '1985-07-13', '101 High St, New Town', 'Male', 'Global Assurance', '555-0104'),
('Morgan Lee', '1999-03-05', '202 Lake Ave, Old City', 'Female', 'SureLife', '555-0105');

-- Insert data into providers table
INSERT INTO providers (full_name, specialty, contact_number, room_number) VALUES
('Dr. Emily Stanton', 'Cardiology', '555-0201', '101'),
('Dr. Mark Well', 'General Medicine', '555-0202', '102'),
('Dr. Anna Lee', 'Pediatrics', '555-0203', '103'),
('Dr. Rachel Green', 'Dermatology', '555-0204', '104'),
('Dr. Ross Geller', 'Orthopedics', '555-0205', '105');

-- Insert data into facilities table
INSERT INTO facilities (facility_name, address) VALUES
('Springfield General Hospital', '101 Health Way, Springfield'),
('Hill Valley Medical Center', '201 Time Traveler Rd, Hill Valley'),
('Twin Peaks Clinic', '301 Cherry Pie Blvd, Twin Peaks'),
('New Town Health Facility', '401 New Way, New Town'),
('Old City Medical Unit', '501 History Lane, Old City');

-- Insert data into appointments table
-- Note: Assumes existing patient_id, provider_id, and facility_id. Replace with actual IDs.
INSERT INTO appointments (patient_id, provider_id, facility_id, appointment_date, appointment_time) VALUES
(1, 1, 1, '2024-03-01', '09:00:00'),
(2, 2, 2, '2024-03-02', '10:00:00'),
(3, 3, 3, '2024-03-03', '11:00:00'),
(4, 4, 4, '2024-03-04', '09:30:00'),
(5, 5, 5, '2024-03-05', '10:30:00');

-- Insert data into medical_records table
-- Note: Assumes existing patient_id and facility_id. Replace with actual IDs.
INSERT INTO medical_records (patient_id, visit_date, facility_id, discharge_date, symptoms, diagnosis, treatment_plan) VALUES
(1, '2024-03-01', 1, '2024-03-02', 'Cough and fever', 'Common Cold', 'Rest and hydration'),
(2, '2024-03-02', 2, '2024-03-03', 'Headache and nausea', 'Migraine', 'Prescription medication and rest'),
(3, '2024-03-03', 3, '2024-03-04', 'Blurry vision', 'Myopia', 'Prescription glasses'),
(4, '2024-03-04', 4, '2024-03-05', 'Shortness of breath', 'Asthma', 'Inhaler and avoid allergens'),
(5, '2024-03-05', 5, '2024-03-06', 'Joint pain', 'Arthritis', 'Physical therapy and medication');

-- Insert data into prescriptions table
-- Note: Assumes existing record_id. Replace with actual IDs.
INSERT INTO prescriptions (record_id, medication, dosage, instructions) VALUES
(1, 'Acetaminophen', '500mg', 'Take 1 tablet every 6 hours as needed'),
(2, 'Ibuprofen', '400mg', 'Take 1 tablet every 8 hours with food'),
(3, 'Amoxicillin', '250mg', 'Take 1 tablet every 8 hours for 10 days'),
(4, 'Albuterol', '2 puffs', 'Inhale 2 puffs every 4 hours as needed for asthma'),
(5, 'Ibuprofen', '600mg', 'Take 1 tablet every 12 hours for pain relief');

-- Insert data into vision_tests table
INSERT INTO vision_tests (record_id, test_type, test_date, result) VALUES
(1, 'Standard Visual Acuity', '2024-03-02', '20/20'),
(2, 'Color Vision Test', '2024-03-03', 'Normal'),
(3, 'Glaucoma Test', '2024-03-04', 'Normal Pressure'),
(4, 'Peripheral Vision Test', '2024-03-05', 'Normal'),
(5, 'Depth Perception Test', '2024-03-06', 'Good');

-- Insert data into invoices table
-- Note: Assumes existing appointment_id. Replace with actual IDs.
INSERT INTO invoices (appointment_id, total_amount, customer_portion, paid_by_customer, insurance_portion, paid_by_insurance, date_issued) VALUES
(1, 200.00, 20.00, 20.00, 180.00, 180.00, '2024-03-02'),
(2, 150.00, 30.00, 30.00, 120.00, 120.00, '2024-03-03'),
(3, 100.00, 10.00, 10.00, 90.00, 90.00, '2024-03-04'),
(4, 250.00, 50.00, 50.00, 200.00, 200.00, '2024-03-05'),
(5, 300.00, 60.00, 60.00, 240.00, 240.00, '2024-03-06');

-- Insert data into equipment table
INSERT INTO equipment (equipment_name, purchase_date, room_number, status) VALUES
('X-ray Machine', '2022-01-15', '101A', 'Operational'),
('Ultrasound Machine', '2022-02-20', '102B', 'Operational'),
('MRI Scanner', '2023-03-25', '103C', 'Maintenance'),
('ECG Machine', '2023-04-30', '104D', 'Operational'),
('Treadmill for Stress Test', '2023-05-05', '105E', 'Operational');

-- Insert data into inventory table
INSERT INTO inventory (item_name, quantity, reorder_level, last_ordered_date) VALUES
('Surgical Masks', 5000, 1000, '2024-02-01'),
('Nitrile Gloves', 4000, 1500, '2024-02-15'),
('Syringes', 3000, 500, '2024-03-01'),
('Bandages', 2000, 300, '2024-03-15'),
('Antiseptic Solution', 1000, 200, '2024-04-01');

-- Insert data into staff table
INSERT INTO staff (full_name, role, contact_number, schedule) VALUES
('Nancy Drew', 'Nurse', '555-0301', 'Mon-Fri, 8am-4pm'),
('Frank Hardy', 'Lab Technician', '555-0302', 'Mon-Fri, 9am-5pm'),
('Julia Styles', 'Receptionist', '555-0303', 'Mon-Fri, 8am-4pm'),
('Hank Scorpio', 'General Manager', '555-0304', 'Mon-Fri, 9am-5pm'),
('Lisa Simpson', 'Pharmacist', '555-0305', 'Mon-Fri, 8am-5pm');

INSERT INTO visits (patient_id, provider_id, facility_id, visit_date, visit_time) VALUES
(1, 1, 1, '2024-03-25', '09:00:00'),
(2, 2, 2, '2024-03-26', '10:30:00'),
(3, 3, 3, '2024-03-27', '11:15:00'),
(4, 4, 4, '2024-03-28', '14:45:00'),
(5, 5, 5, '2024-03-29', '16:30:00');

