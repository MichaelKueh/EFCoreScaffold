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
DELETE FROM [dbo].[Persons];
DELETE FROM [dbo].[Workspaces];

INSERT INTO [dbo].[Workspaces]([Id], [Name])
VALUES
    (1, 'Workspace 1'),
    (2, 'Workspace 2')

INSERT INTO [dbo].[Persons]([Id], [Name], [PrimaryWorkspaceId], [SecondaryWorkspaceId])
VALUES (1, 'Testname', 1, 2)