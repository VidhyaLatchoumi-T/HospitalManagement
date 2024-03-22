create database hospital
use hospital

CREATE TABLE Patient (
    patientId INT PRIMARY KEY,
    firstName VARCHAR(200),
    lastName VARCHAR(200),
    dateOfBirth DATE,
    gender VARCHAR(10),
    contactNumber VARCHAR(20),
	address VARCHAR(200));

CREATE TABLE Doctor (
    doctorId INT PRIMARY KEY,
    firstName VARCHAR(255),
    lastName VARCHAR(255),
    specialization VARCHAR(255),
    contactNumber VARCHAR(20));

CREATE TABLE Appointment (
    appointmentId INT PRIMARY KEY,
    patientId INT,
    doctorId INT,
    appointmentDate DATE,
    description TEXT,
    FOREIGN KEY (patientId) REFERENCES Patient(patientId),
    FOREIGN KEY (doctorId) REFERENCES Doctor(doctorId));

INSERT INTO Patient VALUES
    (1, 'John', 'Doe', '1990-05-15', 'Male', '1234567890', '123 Main St, City'),
    (2, 'Alice', 'Smith', '1985-09-22', 'Female', '9876543210', '456 Oak St, Town'),
    (3, 'Bob', 'Johnson', '1978-12-10', 'Male', '5551234567', '789 Elm St, Village'),
    (4, 'Emily', 'Brown', '1992-08-05', 'Female', '1112223333', '234 Pine St, County'),
    (5, 'Michael', 'Wilson', '1980-03-18', 'Male', '9998887777', '567 Cedar St, District'),
    (6, 'Sophia', 'Anderson', '1975-06-30', 'Female', '4445556666', '890 Maple St, Township'),
    (7, 'William', 'Taylor', '1995-11-25', 'Male', '3332221111', '345 Birch St, Hamlet'),
    (8, 'Olivia', 'Martinez', '1988-02-14', 'Female', '7778889999', '678 Walnut St, Borough'),
    (9, 'James', 'Garcia', '1970-09-08', 'Male', '2223334444', '901 Oakwood St, Parish'),
    (10, 'Emma', 'Lopez', '1983-04-12', 'Female', '6667778888', '123 Cedarwood St, Manor');

INSERT INTO Doctor VALUES
    (1, 'Dr. Smith', 'Doe', 'Cardiologist', '112223333'),
    (2, 'Dr. Johnson', 'Smith', 'Dermatologist', '445556666'),
    (3, 'Dr. Brown', 'Johnson', 'Pediatrician', '778889999'),
    (4, 'Dr. Taylor', 'Brown', 'Oncologist', '999887777'),
    (5, 'Dr. Wilson', 'Martinez', 'Neurologist', '332221111'),
    (6, 'Dr. Anderson', 'Garcia', 'Orthopedic Surgeon', '667778888'),
    (7, 'Dr. Garcia', 'Lopez', 'Psychiatrist', '222333444'),
    (8, 'Dr. Martinez', 'Taylor', 'Gynecologist', '888990000'),
    (9, 'Dr. Lopez', 'Anderson', 'Urologist', '555444333'),
    (10, 'Dr. Brown', 'Wilson', 'Ophthalmologist', '124567890');

INSERT INTO Appointment VALUES
    (101, 1, 1, '2024-03-20', 'Routine checkup'),
    (102, 2, 2, '2024-03-21', 'Skin condition treatment'),
    (103, 3, 3, '2024-03-22', 'Child vaccination'),
    (104, 4, 4, '2024-03-23', 'Cancer treatment'),
    (105, 5, 5, '2024-03-24', 'Brain scan'),
    (106, 6, 6, '2024-03-25', 'Knee surgery'),
    (107, 7, 7, '2024-03-26', 'Psychological counseling'),
    (108, 8, 8, '2024-03-27', 'Gynecological examination'),
    (109, 9, 9, '2024-03-28', 'Prostate checkup'),
    (110, 10, 10, '2024-03-29', 'Eye examination');

