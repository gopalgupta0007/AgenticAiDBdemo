CREATE TABLE [dbo].[Customers] (
    [CustomerId] INT            IDENTITY (1, 1) NOT NULL,
    [FullName]   NVARCHAR (100) NOT NULL,
    [Email]      NVARCHAR (100) NULL,
    [City]       NVARCHAR (50)  NULL,
    [CreatedAt]  DATETIME       DEFAULT (getdate()) NULL,
    PRIMARY KEY CLUSTERED ([CustomerId] ASC)
);
GO

GRANT SELECT
    ON OBJECT::[dbo].[Customers] TO [agent_reader]
    AS [dbo];
GO

