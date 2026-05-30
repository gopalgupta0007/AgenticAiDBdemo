CREATE TABLE [dbo].[OrderItems] (
    [OrderItemId] INT             IDENTITY (1, 1) NOT NULL,
    [OrderId]     INT             NOT NULL,
    [ProductId]   INT             NOT NULL,
    [Quantity]    INT             NOT NULL,
    [UnitPrice]   DECIMAL (10, 2) NOT NULL,
    PRIMARY KEY CLUSTERED ([OrderItemId] ASC),
    FOREIGN KEY ([OrderId]) REFERENCES [dbo].[Orders] ([OrderId]),
    FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Products] ([ProductId])
);
GO

GRANT SELECT
    ON OBJECT::[dbo].[OrderItems] TO [agent_reader]
    AS [dbo];
GO

