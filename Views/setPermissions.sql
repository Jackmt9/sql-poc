      CREATE DATABASE SCOPED CREDENTIAL SynapseIdentity
      WITH IDENTITY = 'Managed Identity'
      CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'sdfgje432FND'
      GO
      CREATE LOGIN synlog WITH PASSWORD = 'sdfgje432FND''
      CREATE USER synlog FROM LOGIN synlog
      ALTER ROLE db datareader ADD MEMBER synlog