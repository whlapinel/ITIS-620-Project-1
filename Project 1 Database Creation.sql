-- Create Patients table
CREATE TABLE Patients (
    PatientID INT PRIMARY KEY,
    FullName VARCHAR(255),
    DateOfBirth DATE,
    Gender VARCHAR(10),
    ContactNumber VARCHAR(20)
);

-- Create Appointments table
CREATE TABLE Appointments (
    AppointmentID INT PRIMARY KEY,
    PatientID INT,
    DoctorID INT,
    AppointmentDate DATE,
    AppointmentTime TIME,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
);

-- Create Doctors table
CREATE TABLE Doctors (
    DoctorID INT PRIMARY KEY,
    FullName VARCHAR(255),
    Specialty VARCHAR(100),
    ContactNumber VARCHAR(20),
    RoomNumber VARCHAR(20)
);

-- Create MedicalRecords table
CREATE TABLE MedicalRecords (
    RecordID INT PRIMARY KEY,
    PatientID INT,
    VisitDate DATE,
    Diagnosis VARCHAR(255),
    TreatmentPlan VARCHAR(255),
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID)
);

-- Create Prescriptions table
CREATE TABLE Prescriptions (
    PrescriptionID INT PRIMARY KEY,
    RecordID INT,
    Medication VARCHAR(255),
    Dosage VARCHAR(50),
    Instructions TEXT,
    FOREIGN KEY (RecordID) REFERENCES MedicalRecords(RecordID)
);

-- Create VisionTests table
CREATE TABLE VisionTests (
    TestID INT PRIMARY KEY,
    RecordID INT,
    TestType VARCHAR(100),
    TestDate DATE,
    Result VARCHAR(100),
    FOREIGN KEY (RecordID) REFERENCES MedicalRecords(RecordID)
);

-- Create Invoices table
CREATE TABLE Invoices (
    InvoiceID INT PRIMARY KEY,
    AppointmentID INT,
    TotalAmount DECIMAL(10,2),
    DateIssued DATE,
    PaymentStatus VARCHAR(20),
    FOREIGN KEY (AppointmentID) REFERENCES Appointments(AppointmentID)
);

-- Create Equipment table
CREATE TABLE Equipment (
    EquipmentID INT PRIMARY KEY,
    EquipmentName VARCHAR(255),
    PurchaseDate DATE,
    RoomNumber VARCHAR(20),
    Status VARCHAR(20)
);

-- Create Inventory table
CREATE TABLE Inventory (
    InventoryID INT PRIMARY KEY,
    ItemName VARCHAR(255),
    Quantity INT,
    ReorderLevel INT,
    LastOrderedDate DATE
);

-- Create Staff table
CREATE TABLE Staff (
    StaffID INT PRIMARY KEY,
    FullName VARCHAR(255),
    Role VARCHAR(50),
    ContactNumber VARCHAR(20),
    Schedule VARCHAR(255)
);
