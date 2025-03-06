-- Active: 1735298791187@@127.0.0.1@3306@librarydb
-- Create the EmployeeDetails table
CREATE TABLE EmployeeDetails (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    Position VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(20),
    HireDate DATE
);

-- Insert sample data into the EmployeeDetails table
INSERT INTO EmployeeDetails (EmployeeID, FirstName, LastName, Department, Position, Email, Phone, HireDate) VALUES
(1, 'John', 'Doe', 'HR', 'Manager', 'john.doe@example.com', '123-456-789', '2022-01-15'),
(2, 'Jane', 'Smith', 'IT', 'Developer', 'jane.smith@example.com', '987-654-321', '2022-03-20'),
(3, 'Emily', 'Johnson', 'Sales', 'Sales Rep', 'emily.johnson@example.com', '456-789-123', '2021-11-10'),
(4, 'Michael', 'Brown', 'Finance', 'Accountant', 'michael.brown@example.com', '789-123-456', '2023-02-05'),
(5, 'Sarah', 'Williams', 'IT', 'System Admin', 'sarah.williams@example.com', '321-654-987', '2023-05-08'),
(6, 'David', 'Martinez', 'Marketing', 'Marketing Specialist', 'david.martinez@example.com', '654-321-987', '2022-09-30'),
(7, 'Jessica', 'Lee', 'HR', 'HR Assistant', 'jessica.lee@example.com', '234-567-890', '2021-12-18'),
(8, 'Matthew', 'Taylor', 'Sales', 'Sales Manager', 'matthew.taylor@example.com', '890-123-456', '2023-07-15'),
(9, 'Ashley', 'Garcia', 'Marketing', 'Marketing Manager', 'ashley.garcia@example.com', '567-890-123', '2022-04-25'),
(10, 'Christopher', 'Rodriguez', 'IT', 'IT Manager', 'chris.rodriguez@example.com', '678-901-234', '2023-01-30'),
(11, 'Amanda', 'Hernandez', 'Finance', 'Financial Analyst', 'amanda.hernandez@example.com', '901-234-567', '2023-09-12'),
(12, 'Daniel', 'Nguyen', 'Sales', 'Sales Rep', 'daniel.nguyen@example.com', '345-678-901', '2022-11-28'),
(13, 'Olivia', 'King', 'HR', 'HR Manager', 'olivia.king@example.com', '123-456-789', '2022-06-20'),
(14, 'Ethan', 'Walker', 'Marketing', 'Marketing Specialist', 'ethan.walker@example.com', '987-654-321', '2023-03-05'),
(15, 'Ava', 'Perez', 'IT', 'Developer', 'ava.perez@example.com', '456-789-123', '2021-10-22'),
(16, 'Mia', 'Scott', 'Finance', 'Accountant', 'mia.scott@example.com', '789-123-456', '2022-08-14'),
(17, 'Logan', 'Green', 'Sales', 'Sales Rep', 'logan.green@example.com', '321-654-987', '2023-04-18'),
(18, 'Lily', 'Hall', 'HR', 'HR Assistant', 'lily.hall@example.com', '654-321-987', '2022-02-07'),
(19, 'James', 'Baker', 'Marketing', 'Marketing Manager', 'james.baker@example.com', '234-567-890', '2023-08-22'),
(20, 'Sophia', 'Young', 'IT', 'System Admin', 'sophia.young@example.com', '890-123-456', '2021-07-11');


select * from EmployeeDetails

-- Create the EmployeeSkills table
CREATE TABLE EmployeeSkills (
    EmployeeID INT,
    Skill VARCHAR(50),
    SkillLevel VARCHAR(20),
    FOREIGN KEY (EmployeeID) REFERENCES EmployeeDetails(EmployeeID)
);

-- Insert sample data into the EmployeeSkills table
INSERT INTO EmployeeSkills (EmployeeID, Skill, SkillLevel) VALUES
(1, 'Project Management', 'Intermediate'),
(1, 'Leadership', 'Advanced'),
(2, 'Java', 'Intermediate'),
(2, 'SQL', 'Advanced'),
(3, 'Sales', 'Advanced'),
(3, 'Customer Relationship Management', 'Intermediate'),
(4, 'Accounting', 'Advanced'),
(4, 'Financial Analysis', 'Intermediate'),
(5, 'System Administration', 'Advanced'),
(5, 'Network Security', 'Intermediate'),
(6, 'Marketing Strategy', 'Advanced'),
(6, 'Content Creation', 'Intermediate'),
(7, 'Human Resources Management', 'Advanced'),
(7, 'Recruitment', 'Intermediate'),
(8, 'Sales Management', 'Advanced'),
(8, 'Negotiation', 'Intermediate'),
(9, 'Marketing Campaign Management', 'Advanced'),
(9, 'Brand Management', 'Intermediate'),
(10, 'IT Management', 'Advanced'),
(10, 'Project Planning', 'Intermediate');


select * from EmployeeSkills


select * from EmployeeDetails

-- Create the Departments table
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

-- Insert sample data into the Departments table
INSERT INTO Departments (DepartmentID, DepartmentName) VALUES
(1, 'HR'),
(2, 'IT'),
(3, 'Sales'),
(4, 'Finance'),
(5, 'Marketing');

-- Create the EmployeeDepartments table
CREATE TABLE EmployeeDepartments (
    EmployeeID INT,
    DepartmentID INT,
    FOREIGN KEY (EmployeeID) REFERENCES EmployeeDetails(EmployeeID),
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

-- Insert sample data into the EmployeeDepartments table
INSERT INTO EmployeeDepartments (EmployeeID, DepartmentID) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 2),
(6, 5),
(7, 1),
(8, 3),
(9, 5),
(10, 2),
(11, 4),
(12, 3),
(13, 1),
(14, 5),
(15, 2),
(16, 4),
(17, 3)
