/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

PRINT 'Environment Var: $(env)'
PRINT 'Environment Var: $(instance)'
PRINT 'Database Name (Predefined Var): $(DatabaseName)'

IF (NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'sg-ag-sql-dac-$(env)-$(instance)-$(DatabaseName)-readers'))  
BEGIN  
	PRINT 'Adding user: sg-ag-sql-dac-$(env)-$(instance)-$(DatabaseName)-readers to [db_datareader]'
	CREATE USER [sg-ag-sql-dac-$(env)-$(instance)-$(DatabaseName)-readers] FROM EXTERNAL PROVIDER
	ALTER ROLE [db_datareader] ADD MEMBER [sg-ag-sql-dac-$(env)-$(instance)-$(DatabaseName)-readers]
	SELECT * FROM sys.database_principals WHERE [name] = 'sg-ag-sql-dac-$(env)-$(instance)-$(DatabaseName)-readers'
END  

IF (NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'sg-ag-sql-dac-$(env)-$(instance)-$(DatabaseName)-writers'))  
BEGIN  
	PRINT 'Adding user: sg-ag-sql-dac-$(env)-$(instance)-$(DatabaseName)-writers to [db_datawriter]'
	CREATE USER [sg-ag-sql-dac-$(env)-$(instance)-$(DatabaseName)-writers] FROM EXTERNAL PROVIDER
	ALTER ROLE [db_datawriter] ADD MEMBER [sg-ag-sql-dac-$(env)-$(instance)-$(DatabaseName)-writers]
	SELECT * FROM sys.database_principals WHERE [name] = 'sg-ag-sql-dac-$(env)-$(instance)-$(DatabaseName)-writers'
END  