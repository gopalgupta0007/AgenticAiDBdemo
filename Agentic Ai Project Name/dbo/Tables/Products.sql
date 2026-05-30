CREATE TABLE [dbo].[Products] (
    [ProductId]   INT             IDENTITY (1, 1) NOT NULL,
    [ProductName] NVARCHAR (100)  NOT NULL,
    [Category]    NVARCHAR (50)   NULL,
    [Price]       DECIMAL (10, 2) NOT NULL,
    [IsActive]    BIT             DEFAULT ((1)) NULL,
    PRIMARY KEY CLUSTERED ([ProductId] ASC)
);
GO

GRANT SELECT
    ON OBJECT::[dbo].[Products] TO [agent_reader]
    AS [dbo];
GO

