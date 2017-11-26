IF NOT EXISTS (select * from sys.tables t where t.name = 'CreditCards')
BEGIN
    CREATE TABLE CreditCards(
        CreditCardId INT PRIMARY KEY IDENTITY(1,1),
        ExpirationDate DATETIME DEFAULT(NULL),
        CardHolderName VARCHAR(200) NOT NULL,
        EmployeeId INT REFERENCES Employees(EmployeeID)
        );
END