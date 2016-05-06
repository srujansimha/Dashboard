----insert default data
INSERT INTO [POSDashboard].[dbo].[Company]([Name],[Code],[Desc],[Active])
VALUES ('INTERBUS','INTERBUS','INTERBUS company',1)


INSERT INTO [POSDashboard].[dbo].[Users]
           ([FirstName]
           ,[LastName]
           ,[UserTypeId]
           ,[EmpNo]
           ,[Email]
           ,[AddressId]
           ,[MobileNo]
           ,[RoleId]
           ,[Active]
           ,[MiddleName]
           ,[CompanyId])
     VALUES
           ('Admin','Admin',null,'EMP001',null,null,null,1,1,null,1)

INSERT INTO [POSDashboard].[dbo].[Roles]
           ([Name]
           ,[Description]
           ,[Active]
           ,[CompanyId]
		   ,[IsPublic])
     VALUES
           ('Admin',null,1,1,0)

INSERT INTO [POSDashboard].[dbo].[Roles]
           ([Name]
           ,[Description]
           ,[Active]
           ,[CompanyId]
		   ,[IsPublic])
     VALUES
           ('Fleet Owner',null,1,1,1)

INSERT INTO [POSDashboard].[dbo].[UserRoles]
           ([UserId]
           ,[RoleId]
           ,[GroupId]
           ,[RoleName])
     VALUES
           (1,1,1,'Admin')

INSERT INTO [POSDashboard].[dbo].[UserLogins]
           ([LoginInfo]
           ,[PassKey]
           ,[UserId]
           ,[salt]
           ,[Active])
     VALUES
           ('admin','admin',1,null,1)

INSERT INTO [POSDashboard].[dbo].[CompanyRoles]
           ([CompanyId],[RoleId],[Active])
           VALUES(1,1,1)
