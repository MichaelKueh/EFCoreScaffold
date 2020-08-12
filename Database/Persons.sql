CREATE TABLE [dbo].[Persons]
(
	[Id]					INT					NOT NULL,
	[Name]					NVARCHAR(100)		NOT	NULL,
	[PrimaryWorkspaceId]	INT					NULL,
	[SecondaryWorkspaceId]	INT					NULL,

	CONSTRAINT [PK_Persons]						PRIMARY KEY ([ID]),
	CONSTRAINT [FK_Persons_Workspace_Primary]	FOREIGN KEY ([PrimaryWorkspaceId]) REFERENCES [dbo].[Workspaces]([Id]),
	CONSTRAINT [FK_Persons_Workspace_Secondary] FOREIGN KEY ([PrimaryWorkspaceId]) REFERENCES [dbo].[Workspaces]([Id])
)
