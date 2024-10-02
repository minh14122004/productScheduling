-- Tạo cơ sở dữ liệu Project_test
CREATE DATABASE Project_test;
GO

-- Sử dụng cơ sở dữ liệu mới tạo
USE Project_test;
GO

-- Tạo bảng Role
CREATE TABLE Role (
    Id INT PRIMARY KEY,
    name_role NVARCHAR(100) NOT NULL,
    salary FLOAT NOT NULL
);

-- Tạo bảng Account
CREATE TABLE Account (
    ID INT PRIMARY KEY,
    username NVARCHAR(100) UNIQUE NOT NULL,
    password NVARCHAR(100) NOT NULL,
    rID INT NOT NULL,
    FOREIGN KEY (rID) REFERENCES Role(Id)
);



-- Tạo bảng Feature
CREATE TABLE Feature (
    Id INT PRIMARY KEY,
    Feature_Name NVARCHAR(100) NOT NULL
);

-- Tạo bảng Role_Feature
CREATE TABLE Role_Feature (
    Role_id INT NOT NULL,
    Feature_id INT NOT NULL,
    PRIMARY KEY (Role_id, Feature_id),
    FOREIGN KEY (Role_id) REFERENCES Role(Id),
    FOREIGN KEY (Feature_id) REFERENCES Feature(Id)
);

-- Tạo bảng Factory
CREATE TABLE Factory (
    Id INT PRIMARY KEY,
    hID INT,
    Factory_name NVARCHAR(100) NOT NULL
);

-- Tạo bảng Month_Shift_Plan
CREATE TABLE Month_Shift_Plan (
    Id INT PRIMARY KEY,
    facID INT NOT NULL,
    Month INT NOT NULL,
    day INT NOT NULL,
    wID INT NOT NULL,
    sID INT NOT NULL,
    FOREIGN KEY (facID) REFERENCES Factory(Id)
);

-- Tạo bảng Shift
CREATE TABLE Shift (
    Id INT PRIMARY KEY,
    facID INT NOT NULL,
    name NVARCHAR(100) NOT NULL,
    start TIME NOT NULL,
    finish TIME NOT NULL,
    FOREIGN KEY (facID) REFERENCES Factory(Id)
);

-- Tạo bảng Worker
CREATE TABLE Worker (
    Id INT PRIMARY KEY,
    accId INT NOT NULL,
    name NVARCHAR(100) NOT NULL,
    facID INT NOT NULL,
    total_KPI FLOAT NOT NULL,
    FOREIGN KEY (accId) REFERENCES Account(ID),
    FOREIGN KEY (facID) REFERENCES Factory(Id)
);

-- Tạo bảng Daily_Worker
CREATE TABLE Daily_Worker (
    Id INT PRIMARY KEY,
    wID INT NOT NULL,
    shiftID INT NOT NULL,
    KPI FLOAT NOT NULL,
    attended BIT NOT NULL,
    FOREIGN KEY (wID) REFERENCES Worker(Id),
    FOREIGN KEY (shiftID) REFERENCES Shift(Id)
);

-- Tạo bảng Factory_Header
CREATE TABLE Factory_Header (
    Id INT PRIMARY KEY,
    accID INT NOT NULL,
    facId INT NOT NULL,
    name NVARCHAR(100) NOT NULL,
    FOREIGN KEY (accID) REFERENCES Account(ID),
    FOREIGN KEY (facId) REFERENCES Factory(Id)
);

-- Tạo bảng Planer
CREATE TABLE Planer (
    Id INT PRIMARY KEY,
    accID INT NOT NULL,
    planID INT NOT NULL,
    name NVARCHAR(100) NOT NULL,
    FOREIGN KEY (accID) REFERENCES Account(ID)
);

-- Tạo bảng Plan
CREATE TABLE [Plan] (
    Id INT PRIMARY KEY,
    pID INT NOT NULL,
    Quantity INT NOT NULL,
    done BIT NOT NULL
);

-- Tạo bảng Plan_detail
CREATE TABLE Plan_detail (
    Id INT PRIMARY KEY,
    date DATE NOT NULL,
    pID INT NOT NULL,
    facID INT NOT NULL,
    Quantity DECIMAL(5, 2) NOT NULL,
    note NVARCHAR(255),
    done BIT NOT NULL,
    FOREIGN KEY (pID) REFERENCES [Plan](Id),
    FOREIGN KEY (facID) REFERENCES Factory(Id)
);

-- Tạo bảng Product
CREATE TABLE Product (
    Id INT PRIMARY KEY,
    Prodcut_name NVARCHAR(100) NOT NULL,
    estimated INT NOT NULL
);

-- Quan hệ giữa Plan và Product
ALTER TABLE [Plan]
ADD FOREIGN KEY (pID) REFERENCES Product(Id);

-- Quan hệ giữa Plan_detail và Product
ALTER TABLE Plan_detail
ADD FOREIGN KEY (pID) REFERENCES Product(Id);
