CREATE DATABASE [ABC Production Scheduling System];
GO

USE [ABC Production Scheduling System];
GO

-- Role Table
CREATE TABLE [Role] (
    [rID] INT PRIMARY KEY,
    [name_role] VARCHAR(50) NOT NULL
);

-- Feature Table
CREATE TABLE [Feature] (
    [fID] INT PRIMARY KEY,
    [Feature_Name] VARCHAR(100)
);

-- Product Table
CREATE TABLE [Product] (
    [pID] INT PRIMARY KEY,
    [Prodcut_name] VARCHAR(100),
    [estimated] INT
);

-- Account Table
CREATE TABLE [Account] (
    [aID] INT PRIMARY KEY,
    [username] VARCHAR(50) NOT NULL,
    [password] VARCHAR(50) NOT NULL,
    [rID] INT NOT NULL,
    FOREIGN KEY ([rID]) REFERENCES [Role]([rID])
);

-- Factory Table
CREATE TABLE [Factory] (
    [facID] INT PRIMARY KEY,
    [hID] INT NOT NULL,
    [Factory_name] VARCHAR(100)
);

-- Worker Table
CREATE TABLE [Worker] (
    [wID] INT PRIMARY KEY,
    [aID] INT NOT NULL,
    [name] VARCHAR(100),
    [facID] INT NOT NULL,
    [total_KPI] FLOAT,
    FOREIGN KEY ([aID]) REFERENCES [Account]([aID]),
    FOREIGN KEY ([facID]) REFERENCES [Factory]([facID])
);

-- Shift Table
CREATE TABLE [Shift] (
    [sID] INT PRIMARY KEY,
    [facID] INT NOT NULL,
    [name] VARCHAR(50),
    [start] TIME,
    [to] TIME,
    FOREIGN KEY ([facID]) REFERENCES [Factory]([facID])
);

-- Customer_Order Table
CREATE TABLE [Customer_Order] (
    [oID] INT PRIMARY KEY,
    [pID] INT NOT NULL,
    [Quantity] INT,
    [done] BIT,
    FOREIGN KEY ([pID]) REFERENCES [Product]([pID])
);

-- Planer Table
CREATE TABLE [Planer] (
    [planerID] INT PRIMARY KEY,
    [aID] INT NOT NULL,
    [planID] INT,
    [name] VARCHAR(100),
    FOREIGN KEY ([aID]) REFERENCES [Account]([aID])
);

-- Factory_Header Table
CREATE TABLE [Factory_Header] (
    [fhID] INT PRIMARY KEY,
    [aID] INT NOT NULL,
    [facID] INT NOT NULL,
    [name] VARCHAR(100),
    FOREIGN KEY ([aID]) REFERENCES [Account]([aID]),
    FOREIGN KEY ([facID]) REFERENCES [Factory]([facID])
);

-- Human_rss_management Table
CREATE TABLE [Human_rss_management] (
    [mID] INT PRIMARY KEY,
    [aID] INT NOT NULL,
    [name] VARCHAR(100),
    FOREIGN KEY ([aID]) REFERENCES [Account]([aID])
);

-- User_infor Table
CREATE TABLE [User_infor] (
    [uID] INT PRIMARY KEY,
    [aID] INT NOT NULL,
    [name] VARCHAR(100),
    FOREIGN KEY ([aID]) REFERENCES [Account]([aID])
);

-- Role_Feature Table
CREATE TABLE [Role_Feature] (
    [rID] INT NOT NULL,
    [fID] INT NOT NULL,
    PRIMARY KEY ([rID], [fID]),
    FOREIGN KEY ([rID]) REFERENCES [Role]([rID]),
    FOREIGN KEY ([fID]) REFERENCES [Feature]([fID])
);

-- Salary_Base Table
CREATE TABLE [Salary_Base] (
    [salID] INT PRIMARY KEY,
    [rID] INT NOT NULL,
    [base_salary_per_day] FLOAT,
    FOREIGN KEY ([rID]) REFERENCES [Role]([rID])
);

-- Salary Table
CREATE TABLE [Salary] (
    [salID] INT PRIMARY KEY,
    [wID] INT NOT NULL,
    [Month] DATE,
    [Salary] FLOAT,
    FOREIGN KEY ([wID]) REFERENCES [Worker]([wID])
);

-- Month_Shift_Plan Table
CREATE TABLE [Month_Shift_Plan] (
    [msID] INT PRIMARY KEY,
    [facID] INT NOT NULL,
    [Month] INT,
    [day] DATE,
    [wID] INT NOT NULL,
    [sID] INT NOT NULL,
    FOREIGN KEY ([facID]) REFERENCES [Factory]([facID]),
    FOREIGN KEY ([wID]) REFERENCES [Worker]([wID]),
    FOREIGN KEY ([sID]) REFERENCES [Shift]([sID])
);

-- Daily_Worker Table
CREATE TABLE [Daily_Worker] (
    [dwID] INT PRIMARY KEY,
    [day] DATE,
    [wID] INT NOT NULL,
    [sID] INT NOT NULL,
    [KPI] FLOAT,
    FOREIGN KEY ([wID]) REFERENCES [Worker]([wID]),
    FOREIGN KEY ([sID]) REFERENCES [Shift]([sID])
);

-- MSP_Worker Table
CREATE TABLE [MSP_Worker] (
    [wID] INT NOT NULL,
    [msID] INT NOT NULL,
    PRIMARY KEY ([wID], [msID]),
    FOREIGN KEY ([wID]) REFERENCES [Worker]([wID]),
    FOREIGN KEY ([msID]) REFERENCES [Month_Shift_Plan]([msID])
);

-- Plan_detail Table
CREATE TABLE [Plan_detail] (
    [pldID] INT PRIMARY KEY,
    [date] DATE,
    [pID] INT NOT NULL,
    [oID] INT NOT NULL,
    [facID] INT NOT NULL,
    [planerID] INT NOT NULL,
    [Quantity] FLOAT,
    [note] VARCHAR(255),
    [done] BIT,
    FOREIGN KEY ([pID]) REFERENCES [Product]([pID]),
    FOREIGN KEY ([oID]) REFERENCES [Customer_Order]([oID]),
    FOREIGN KEY ([facID]) REFERENCES [Factory]([facID]),
    FOREIGN KEY ([planerID]) REFERENCES [Planer]([planerID])
);
