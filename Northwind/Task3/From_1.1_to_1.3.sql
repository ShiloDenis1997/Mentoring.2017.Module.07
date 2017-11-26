IF EXISTS (select * from sys.tables t where t.name = 'Region')
BEGIN
    EXEC sp_rename 'Region', 'Regions';
END

IF NOT EXISTS (select * from sys.columns where object_id = OBJECT_ID(N'[dbo].[Customers]') AND name = 'FoundationDate')
BEGIN
    ALTER TABLE Customers
    ADD FoundationDate DATETIME
END