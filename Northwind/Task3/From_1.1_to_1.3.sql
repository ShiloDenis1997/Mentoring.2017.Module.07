IF EXISTS (select * from sys.tables t where t.name = 'Region')
BEGIN
    EXEC sp_rename 'Region', 'Regions';
END